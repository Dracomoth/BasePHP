<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Dashboard - BasePHP</title>
    <link rel="stylesheet" href="/assets/css/style.css">
</head>
<body>
    <header class="navbar">
        <div class="nav-brand">BasePHP Template</div>
        <div class="nav-user">
            <span>Logged in as: <strong><?= htmlspecialchars($user['username'] ?? 'User', ENT_QUOTES, 'UTF-8') ?></strong></span>
            <a href="/logout" class="btn btn-secondary btn-sm">Log Out</a>
        </div>
    </header>

    <main class="container">
        <div class="card">
            <h1>Protected Dashboard</h1>
            <p>You have successfully logged in! This view is protected by the authentication guard.</p>
            <div class="info-box">
                <h3>Session Information</h3>
                <ul>
                    <li><strong>User:</strong> <?= htmlspecialchars($user['username'] ?? '', ENT_QUOTES, 'UTF-8') ?></li>
                    <li><strong>Session Login Time:</strong> <?= htmlspecialchars($user['logged_in_at'] ?? '', ENT_QUOTES, 'UTF-8') ?></li>
                </ul>
            </div>
        </div>
    </main>
</body>
</html>
