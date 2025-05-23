<!DOCTYPE html>
<html lang="${locale! 'en'}">
<head>
  <meta charset="UTF-8" />
  <title>Reset Your Password</title>
  <style>
    body { background:url('${url.resourcesPath}/img/login_bg.png');font-family: Arial, sans-serif; margin: 0; padding: 20px; }
    .container { max-width: 600px; margin: auto; }
    .btn { display: inline-block; padding: 10px 20px; background: #2a73cc; color: #fff; text-decoration: none; border-radius: 4px; }
  </style>
</head>
<body>
  <div class="container">
    <h2>Reset Your Password</h2>
    <p>Hello ${user.username!user.email! "User"},</p>
    <p>You have requested to reset your password for the <strong>${realmName}</strong> account.</p>
    <p>
      <a href="${link?string}" class="btn">Reset Password</a>
    </p>
    <p>If the button doesn’t work, copy &amp; paste this link into your browser:</p>
    <p><a href="${link?string}">${link?string}</a></p>
    <p>If you didn’t request this, simply ignore this email.</p>
    <hr />
    <p>Thank you,<br/>The ${realmName} Team</p>
  </div>
</body>
</html>
