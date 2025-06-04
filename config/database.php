<?php
/* Secure Database Configuration */
defined('APP_ROOT') or die('Direct access denied');

// Database settings
$dbConfig = [
    'host' => '127.0.0.1',
    'port' => '3306',
    'name' => 'web_final',  // ✅ database name must match what you created in phpMyAdmin
    'user' => 'root',
    'pass' => '',
    'options' => [
        PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION,
        PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_ASSOC,
        PDO::MYSQL_ATTR_INIT_COMMAND => "SET NAMES utf8mb4",
        PDO::ATTR_PERSISTENT => false
    ]
];

try {
    $dsn = "mysql:host={$dbConfig['host']};port={$dbConfig['port']};dbname={$dbConfig['name']};charset=utf8mb4";
    $db = new PDO($dsn, $dbConfig['user'], $dbConfig['pass'], $dbConfig['options']);
    $db->query("SELECT 1");
} catch (PDOException $e) {
    $_SESSION['db_error'] = [
        'message' => 'Database connection failed',
        'details' => $e->getMessage(),
        'config' => [
            'host' => "{$dbConfig['host']}:{$dbConfig['port']}",
            'dbname' => $dbConfig['name']
        ]
    ];
    header('Location: index.php?page=error');
    exit;
}
