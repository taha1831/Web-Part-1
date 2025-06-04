<h2>Trending posts</h2>

<?php if (!empty($posts)): ?>
    <?php foreach ($posts as $post): ?>
        <div class="post">
            <div class="post-author"><?= htmlspecialchars($post['name']) ?></div>
            <div class="post-content"><?= htmlspecialchars($post['content']) ?></div>
            <div style="color: #888; font-size: 0.85em;">
                Likes: <?= (int)$post['likes'] ?> | Views: <?= (int)$post['views'] ?>
            </div>
        </div>
    <?php endforeach; ?>
<?php else: ?>
    <p>No posts found.</p>
<?php endif; ?>
