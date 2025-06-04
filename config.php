<?php
/* 
 * Database Connector Service
 * Alternative implementation with same functionality
 */

// Security gatekeeper
if (!defined('APP_BOOTSTRAP')) {
    exit('Direct access denied');
}

// Environment-aware settings
$runtimeMode = 'development'; // Switch to 'production' when deploying

// Database access credentials
$dbConfig = [
    'host' => '127.0.0.1', // Using IP instead of 'localhost'
    'schema' => 'web_final',
    'username' => 'root',
    'passphrase' => '' // Add your actual password here
];

// Configure error visibility
$showErrors = ($runtimeMode === 'development');
ini_set('display_errors', $showErrors ? '1' : '0');
error_reporting($showErrors ? E_ALL : 0);

// Database connection handler
$databaseHandler = null;

try {
    // Initialize database communication
    $dsn = sprintf(
        'mysql:host=%s;dbname=%s;charset=utf8mb4',
        $dbConfig['host'],
        $dbConfig['schema']
    );
    
    $connectionSettings = [
        PDO::ATTR_PERSISTENT => false,
        PDO::ATTR_TIMEOUT => 5,
        PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION,
        PDO::ATTR_STRINGIFY_FETCHES => false,
        PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_OBJ
    ];
    
    $databaseHandler = new PDO(
        $dsn,
        $dbConfig['username'],
        $dbConfig['passphrase'],
        $connectionSettings
    );
    
    // Verify connection
    $databaseHandler->query('SELECT 1')->fetch();

} catch (PDOException $connectionError) {
    // Log detailed error internally
    error_log(sprintf(
        'Database connection failure: %s [%d]',
        $connectionError->getMessage(),
        $connectionError->getCode()
    ));
    
    // User-facing message
    $errorTemplate = $runtimeMode === 'development'
        ? 'Database unavailable: %s'
        : 'Service temporarily unavailable';
    
    die(sprintf($errorTemplate, $connectionError->getMessage()));
}

// Connection verification flag
define('DB_CONNECTED', $databaseHandler !== null);
