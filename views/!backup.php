<h2>Top 10 Trending Posts</h2>

<?php if (empty($pageData['top_posts'])): ?>
    <p>No trending posts yet.</p>
<?php else: ?>
    <?php foreach ($pageData['top_posts'] as $post): ?>
        <div class="post">
            <div class="post-author"><?= htmlspecialchars($post['name']) ?></div>
            <div class="post-content"><?= htmlspecialchars($post['content']) ?></div>
            <div style="color: #888; font-size: 0.85em;">
                Likes: <?= (int)$post['likes'] ?> | Views: <?= (int)$post['views'] ?>
            </div>
        </div>
    <?php endforeach; ?>
<?php endif; ?>