<!DOCTYPE html>
<html>
<head>
    <title><?= htmlspecialchars($page_title) ?></title>
    <style>
        .nav-row {
            display: flex;
            background: #f2f2f2;
            padding: 10px;
        }
        .nav-row a {
            margin-right: 15px;
        }
    </style>
</head>
<body>
    <!-- SINGLE navigation row -->
    <div class="nav-row">
        <a href="index.php?page=home">Home</a>
        <a href="index.php?page=trending">Trending</a>
        <a href="index.php?page=signin">Sign In</a>
    </div>

    <!-- Dynamic content -->
    <?= $content ?>

</body>
</html>