<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>${msg("emailVerifyTitle")}</title>
    <style>
        body { font-family: Arial, sans-serif; background: #f8f8f9; }
        .container { max-width: 400px; margin: 40px auto; background: #fff; padding: 2em; border-radius: 8px; box-shadow: 0 0 10px #ccc;}
        label { margin-bottom: 4px; }
        button { padding: 10px 14px; background: #316be1; color: white; border: none; border-radius: 4px; cursor: pointer; font-weight:bold;}
        button:hover { background: #224599;}
        .header { text-align: center; margin-bottom: 24px; }
    </style>
</head>
<body>
    <div class="container">
        <div class="header">
            <h2>${msg("emailVerifyTitle")}</h2>
        </div>
        <form id="kc-verify-email-form" action="${url.loginAction}" method="post">
            <button id="kc-resend-email" name="resend" value="true">${msg("resendEmail")}</button>
        </form>
    </div>
</body>
</html>