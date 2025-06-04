<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Simple Twitter MVC - <?= htmlspecialchars($pageData['title']) ?></title>
    <link rel="icon" href="favicon.ico" type="image/x-icon">
    <style>
        body {
            font-family: Arial, sans-serif;
            background: #f9f9f9;
            margin: 0;
            padding: 20px;
        }

        nav {
            text-align: center;
            margin-bottom: 30px;
            background: white;
            padding: 15px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.05);
            border-radius: 6px;
            max-width: 700px;
            margin-left: auto;
            margin-right: auto;
        }

        nav a {
            margin: 0 10px;
            text-decoration: none;
            color: #1da1f2;
            font-weight: 500;
        }

        nav a:hover {
            text-decoration: underline;
        }

        .active {
            font-weight: bold;
            color: #000;
        }

        .welcome-message {
            margin-left: 15px;
            color: #333;
        }

        .error {
            color: red;
            background: #ffeeee;
            padding: 10px;
            border: 1px solid red;
            border-radius: 6px;
            margin: 10px auto;
            max-width: 500px;
            text-align: left;
            font-size: 0.95rem;
        }

        .container {
            background: white;
            padding: 2rem;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.05);
            max-width: 700px;
            margin: 0 auto;
            text-align: left;
        }

        .post {
            border-bottom: 1px solid #ddd;
            padding: 10px 0;
            margin-bottom: 15px;
        }

        .post-author {
            font-weight: bold;
            color: #1da1f2;
        }

        .post-content {
            margin: 5px 0;
        }

        form {
            width: 100%;
        }

        input, textarea {
            width: 100%;
            padding: 10px;
            margin-bottom: 15px;
            box-sizing: border-box;
            border: 1px solid #ccc;
            border-radius: 4px;
            font-family: inherit;
            font-size: 1rem;
        }

        button {
            background: #1da1f2;
            color: white;
            border: none;
            padding: 10px 15px;
            border-radius: 4px;
            cursor: pointer;
            font-size: 1rem;
        }

        button:hover {
            background: #0056b3;
        }

        h2 {
            text-align: center;
            margin-bottom: 20px;
        }
    </style>
</head>
<body>
    <nav>
        <a href="index.php?page=home" class="<?= $pageData['current_page'] === 'home' ? 'active' : '' ?>">Home</a>
        <a href="index.php?page=trending" class="<?= $pageData['current_page'] === 'trending' ? 'active' : '' ?>">Trending</a>

        <?php if (!empty($pageData['user'])): ?>
            <a href="index.php?page=post" class="<?= $pageData['current_page'] === 'post' ? 'active' : '' ?>">Post</a>
            <span class="welcome-message">Welcome, <?= htmlspecialchars($pageData['user']) ?></span>
            <a href="index.php?page=logout">Logout</a>
        <?php else: ?>
            <a href="index.php?page=login" class="<?= $pageData['current_page'] === 'login' ? 'active' : '' ?>">Login</a>
            <a href="index.php?page=signin" class="<?= $pageData['current_page'] === 'signin' ? 'active' : '' ?>">Sign Up</a>
        <?php endif; ?>
    </nav>

    <?php if (!empty($pageData['error'])): ?>
        <div class="error"><?= htmlspecialchars($pageData['error']) ?></div>
    <?php endif; ?>

    <div class="container">
    <?= $pageData['content'] ?>
</div>

</body>
</html>
