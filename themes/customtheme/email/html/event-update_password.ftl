<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Password Changed Notification</title>
  <style>
    body {
      font-family: 'Segoe UI', Arial, sans-serif;
      background-color: #f8fafc;
      margin: 0;
      padding: 32px 0;
    }
    .container {
      background: #fff;
      max-width: 420px;
      margin: 32px auto;
      padding: 36px 32px 28px 32px;
      border-radius: 14px;
      box-shadow: 0 6px 24px 0 rgba(44, 72, 105, 0.12);
      text-align: center;
    }
    .icon {
      background: linear-gradient(120deg, #6dcb89 35%, #4f8ffd 120%);
      border-radius: 50%;
      width: 56px;
      height: 56px;
      display: flex;
      align-items: center;
      justify-content: center;
      margin: 0 auto 24px auto;
      box-shadow: 0 2px 10px rgba(71,218,151,0.11);
    }
    h2 {
      color: #1e3050;
      font-size: 1.35rem;
      margin-bottom: 18px;
      letter-spacing: -.03em;
    }
    p {
      color: #344055;
      font-size: 1.08rem;
      line-height: 1.6;
      margin: 20px 0;
    }
    .footer {
      color: #8ba8c5;
      font-size: .99rem;
      margin-top: 32px;
      border-top: 1px solid #e1e6ed;
      padding-top: 16px;
      letter-spacing: .01em;
    }
  </style>
</head>
<body>
  <div class="container">
    <div class="icon">
      <svg width="34" height="34" viewBox="0 0 24 24"><circle fill="#fff" cx="12" cy="12" r="12"/><path fill="#35bb6e" d="M10.16 15.37l6.08-6.17-1.07-1.08-5 5.09-2.27-2.26-1.07 1.07z"></path></svg>
    </div>
    <h2>Password Successfully Changed</h2>
    <p>
      Hello ${user.firstName!"User"},
      <br><br>
      This is to confirm your password for the <b>${realmName}</b> account was recently changed.
    </p>
    <p>
      If you didn’t request this change, please contact our support team immediately.
    </p>
    <div class="footer">
      Thank you,<br>
      The ${realmName} Team
    </div>
  </div>
</body>
</html>