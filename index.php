<?php
define('APP_ROOT', __DIR__);

// Load database
require __DIR__ . '/config/database.php';

// Start session
if (session_status() === PHP_SESSION_NONE) {
    session_start([
        'cookie_lifetime' => 86400,
        'cookie_secure' => false,
        'cookie_httponly' => true,
        'cookie_samesite' => 'Strict'
    ]);
}

// Routes
$routes = [
    'home' => ['title' => 'Home', 'auth' => false],
    'login' => ['title' => 'Login', 'auth' => false],
    'signin' => ['title' => 'Sign Up', 'auth' => false],
    'post' => ['title' => 'New Post', 'auth' => true],
    'logout' => ['title' => 'Logout', 'auth' => true],
    'trending' => ['title' => 'Trending', 'auth' => false],
    'tops' => ['title' => 'Top Posts', 'auth' => false],
    'error' => ['title' => 'Error', 'auth' => false]
];

// Determine page
$page = strtolower($_GET['page'] ?? 'home');
if (!array_key_exists($page, $routes)) {
    $page = 'error';
}

// Handle logout
if ($page === 'logout') {
    $_SESSION = [];
    if (ini_get("session.use_cookies")) {
        $params = session_get_cookie_params();
        setcookie(session_name(), '', time() - 42000,
            $params["path"], $params["domain"],
            $params["secure"], $params["httponly"]
        );
    }
    session_destroy();
    header('Location: index.php?page=home');
    exit;
}

// Auth check
if ($routes[$page]['auth'] && empty($_SESSION['user_id'])) {
    header('Location: index.php?page=login');
    exit;
}

// Routing logic
switch ($page) {
    case 'login':
        if ($_SERVER['REQUEST_METHOD'] === 'POST') {
            $email = $_POST['email'] ?? '';
            $password = $_POST['password'] ?? '';

            try {
                $stmt = $db->prepare("SELECT user_id, first_name, last_name, password FROM users WHERE email = ?");
                $stmt->execute([$email]);
                $user = $stmt->fetch();

                if ($user && password_verify($password, $user['password'])) {
                    $_SESSION['user_id'] = $user['user_id'];
                    $_SESSION['user_name'] = $user['first_name'] . ' ' . $user['last_name'];
                    header('Location: index.php?page=home');
                    exit;
                } else {
                    $_SESSION['error'] = "Invalid email or password";
                }
            } catch (PDOException $e) {
                error_log('Login error: ' . $e->getMessage());
                $_SESSION['error'] = "Login failed. Please try again.";
            }
        }
        break;

    case 'signin':
        if ($_SERVER['REQUEST_METHOD'] === 'POST') {
            $firstName = trim($_POST['first_name'] ?? '');
            $lastName = trim($_POST['last_name'] ?? '');
            $email = trim($_POST['email'] ?? '');
            $password = $_POST['password'] ?? '';
            $password2 = $_POST['password2'] ?? '';

            if ($password !== $password2) {
                $_SESSION['error'] = "Passwords do not match";
                break;
            }

            try {
                $stmt = $db->prepare("SELECT user_id FROM users WHERE email = ?");
                $stmt->execute([$email]);

                if ($stmt->fetch()) {
                    $_SESSION['error'] = "Email already registered";
                } else {
                    $hashedPassword = password_hash($password, PASSWORD_BCRYPT);
                    $stmt = $db->prepare("INSERT INTO users (first_name, last_name, email, password) VALUES (?, ?, ?, ?)");
                    $stmt->execute([$firstName, $lastName, $email, $hashedPassword]);

                    $_SESSION['user_id'] = $db->lastInsertId();
                    $_SESSION['user_name'] = $firstName . ' ' . $lastName;
                    header('Location: index.php?page=home');
                    exit;
                }
            } catch (PDOException $e) {
                error_log('Signup error: ' . $e->getMessage());
                $_SESSION['error'] = "Registration failed. Please try again.";
            }
        }
        break;

    case 'post':
        if ($_SERVER['REQUEST_METHOD'] === 'POST') {
            $content = trim($_POST['content'] ?? '');

            if (empty($content)) {
                $_SESSION['error'] = "Post content cannot be empty.";
            } elseif (strlen($content) > 280) {
                $_SESSION['error'] = "Post too long (max 280 characters).";
            } else {
                try {
                    $stmt = $db->prepare("INSERT INTO posts (user_id, content, created_at, views, likes) VALUES (?, ?, NOW(), 0, 0)");
                    $stmt->execute([$_SESSION['user_id'], $content]);
                    header('Location: index.php?page=home');
                    exit;
                } catch (PDOException $e) {
                    error_log('Post error: ' . $e->getMessage());
                    $_SESSION['error'] = "Could not create post.";
                }
            }
        }
        break;
}

// View loading
$viewFile = __DIR__ . '/views/' . $page . '.php';
if (!file_exists($viewFile)) {
    $page = 'error';
    $viewFile = __DIR__ . '/views/error.php';
    http_response_code(404);
}

ob_start();

// Data fetches
if ($page === 'home') {
    try {
        $posts = $db->query("
            SELECT p.*, u.first_name, u.last_name, CONCAT(u.first_name, ' ', u.last_name) AS name
            FROM posts p 
            JOIN users u ON p.user_id = u.user_id 
            ORDER BY p.post_id DESC 
            LIMIT 50
        ")->fetchAll();
    } catch (PDOException $e) {
        error_log('Home posts fetch error: ' . $e->getMessage());
        $posts = [];
        $_SESSION['error'] = "Could not load home posts";
    }
}



if ($page === 'trending') {
    try {
        $posts = $db->query("
            SELECT p.*, u.first_name, u.last_name, CONCAT(u.first_name, ' ', u.last_name) AS name
            FROM posts p 
            JOIN users u ON p.user_id = u.user_id 
            ORDER BY p.likes DESC 
            LIMIT 50
        ")->fetchAll();
    } catch (PDOException $e) {
        error_log('Home posts fetch error: ' . $e->getMessage());
        $posts = [];
        $_SESSION['error'] = "Could not load home posts";
    }
}







include $viewFile;
$content = ob_get_clean();

// Page data
$pageData = [
    'title' => $routes[$page]['title'],
    'content' => $content,
    'user' => $_SESSION['user_name'] ?? null,
    'error' => $_SESSION['error'] ?? null,
    'current_page' => $page,
    'posts' => $posts ?? [],
];

unset($_SESSION['error']);

// Layout
include __DIR__ . '/views/layout.php';

