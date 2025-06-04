<?php
if (session_status() === PHP_SESSION_NONE) {
    session_start();
}
require_once __DIR__ . '/../config/database.php';

$pageData = [
    'error' => '',
];

// Check if user is logged in
if (!isset($_SESSION['user_id'])) {
    $pageData['error'] = "You must be logged in to create a post.";
} elseif ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $content = trim($_POST['content'] ?? '');

    if (empty($content)) {
        $pageData['error'] = "Post content cannot be empty.";
    } else {
        try {
            $stmt = $pdo->prepare("INSERT INTO posts (user_id, content, created_at, likes) VALUES (?, ?, NOW(), 0)");
            $stmt->execute([$_SESSION['user_id'], $content]);

            // Redirect to avoid form resubmission
            header("Location: index.php?page=home"); // or wherever you'd like
            exit;
        } catch (PDOException $e) {
            $pageData['error'] = "Database error: " . $e->getMessage();
        }
    }
}
?>

<!-- HTML Part -->
<h2>Create Post</h2>

<?php if (!empty($pageData['error'])): ?>
    <div class="error" style="color: red;"><?= htmlspecialchars($pageData['error']) ?></div>
<?php endif; ?>

<?php if (isset($_SESSION['user_id'])): ?>
    <form method="post" action="index.php?page=post">
        <textarea name="content" rows="3" maxlength="280" placeholder="What's happening?" required></textarea><br>
        <button type="submit">Post</button>
    </form>
<?php endif; ?>
