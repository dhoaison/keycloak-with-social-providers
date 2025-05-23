<!DOCTYPE html>
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <title>Email Verification</title>
  <style>
    body {
      font-family: 'Segoe UI', Arial, sans-serif;
      margin: 0;
      min-height: 100vh;
      background-color: #f4f6fc;
    }
    .art-bg {
      position: fixed;
      top: 0; left: 0; right: 0; bottom: 0;
      z-index: 0;
      pointer-events: none;
    }
    .container {
      max-width: 430px;
      margin: 60px auto;
      padding: 2.4em 2.1em 2em 2.1em;
      border-radius: 18px;
      text-align: center;
      position: relative;
      z-index: 1;
      background: #ffffff;
      box-shadow: 0 0 12px rgba(0, 0, 0, 0.05);
    }
    h1 {
      color: #304269;
      font-size: 1.9em;
      font-weight: 700;
      margin-bottom: 16px;
      margin-top: 8px;
      letter-spacing: -0.5px;
    }
    p {
      color: #41507a;
      font-size: 1.08em;
      line-height: 1.7;
      margin-top: 18px;
      margin-bottom: 0.7em;
    }
    .btn {
      display: inline-block;
      margin: 26px 0 24px 0;
      padding: 15px 44px;
      font-size: 1.125em;
      font-weight: 600;
      color: #ffffff;
      background-color: #000000;
      border-radius: 32px;
      text-decoration: none;
      box-shadow: 0 2px 12px rgba(0, 0, 0, 0.15);
      transition: background-color 0.2s, color 0.2s;
    }
    .btn:hover {
      background-color: #333333;
      color: #f5f5f5;
    }
    .footer {
      margin-top: 2.2em;
      color: #8e99b8;
      font-size: 0.98em;
      border-top: 1px solid #e3e7f4;
      padding-top: 1em;
    }
    @media (max-width: 540px) {
      .container {
        max-width: 98vw;
        padding: 1.3em 2vw 1.3em 2vw;
        margin: 18vw auto;
        border-radius: 9px;
      }
      .btn { width: 94vw; max-width: 275px; padding: 13px 3vw; }
      h1 { font-size: 1.34em; }
      p, .footer { font-size: 1em; }
    }
  </style>
</head>
<body>
  <div class="art-bg"></div>
  <div class="container">
    <h1>Verify Your Email Address</h1>
    <p>
      Thank you for registering with <strong>Gnosis TMS</strong>.<br>
      To activate your account and get started, please verify your email address by clicking the button below.
    </p>
    <a class="btn" href="https://your-verification-link.com">Verify Email</a>
    <div class="footer">
      Best regards,<br>
      The Gnosis TMS Team
    </div>
  </div>
</body>
</html>
