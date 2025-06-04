<div class="container mt-5">
    <div class="alert alert-danger">
        <h2>Database Error</h2>
        <p><?= htmlspecialchars($_SESSION['db_error']['message'] ?? 'Unknown error') ?></p>
        
        <?php if (isset($_SESSION['db_error']['details'])): ?>
            <div class="mt-3">
                <h5>Technical Details:</h5>
                <pre><?= htmlspecialchars($_SESSION['db_error']['details']) ?></pre>
            </div>
        <?php endif; ?>
        
        <p class="mt-3">Please check:
            <ul>
                <li>Is MySQL running in XAMPP?</li>
                <li>Does the database "<?= htmlspecialchars($_SESSION['db_error']['config']['dbname'] ?? 'web_final') ?>" exist?</li>
                <li>Are your database credentials correct?</li>
            </ul>
        </p>
    </div>
</div>