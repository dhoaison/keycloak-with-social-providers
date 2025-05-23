<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Credentials Updated</title>
  <style>
    body {
      background-color: #f6fafc;
      font-family: 'Segoe UI', Arial, sans-serif;
      margin: 0;
      padding: 0;
    }
    .container {
      background: #fff;
      max-width: 420px;
      margin: 36px auto;
      padding: 38px 32px 30px 32px;
      border-radius: 16px;
      box-shadow: 0 8px 32px 0 rgba(84, 120, 168, 0.11);
      text-align: center;
    }
    .icon {
      background: linear-gradient(120deg, #6dcb89 30%, #4f8ffd 110%);
      border-radius: 50%;
      width: 54px;
      height: 54px;
      display: flex;
      align-items: center;
      justify-content: center;
      margin: 0 auto 23px auto;
      box-shadow: 0 2px 10px rgba(70,210,160,0.10);
    }
    h2 {
      color: #234167;
      font-size: 1.23rem;
      margin-bottom: 15px;
      margin-top: 6px;
      font-weight: 700;
    }
    p {
      color: #445375;
      font-size: 1.04rem;
      line-height: 1.6;
      margin: 18px 0;
    }
    .footer {
      color: #8ca1b8;
      font-size: .98rem;
      margin-top: 30px;
      border-top: 1px solid #e1e5ef;
      padding-top: 14px;
      letter-spacing: .01em;
    }
  </style>
</head>
<body>
  <div class="container">
    <div class="icon">
      <svg width="32" height="32" viewBox="0 0 24 24"><circle fill="#fff" cx="12" cy="12" r="12"/><path fill="#35bb6e" d="M10.16 15.37l6.08-6.17-1.07-1.08-5 5.09-2.27-2.26-1.07 1.07z"></path></svg>
    </div>
    <h2>Your Credentials Have Been Updated</h2>
    <p>
      Hello ${user.firstName!"User"},
      <br><br>
      This is to let you know that your credentials for your <b>${realmName}</b> account have been recently updated.
    </p>
    <p>
      If you did not perform this update, please contact our support team immediately.
    </p>
    <div class="footer">
      Thank you,<br>
      The ${realmName} Team
    </div>
  </div>
</body>
</html>