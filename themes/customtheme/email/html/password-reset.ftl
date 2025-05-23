<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <title>Reset Your Password</title>
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <style>
    body, table, td, a {
      -webkit-text-size-adjust: 100%;
      -ms-text-size-adjust: 100%;
    }

    table, td {
      mso-table-lspace: 0pt;
      mso-table-rspace: 0pt;
    }

    img {
      -ms-interpolation-mode: bicubic;
      border: 0;
      height: auto;
      line-height: 100%;
      outline: none;
      text-decoration: none;
    }

    body {
      margin: 0;
      padding: 0;
      background-color: #f5f7fa;
      width: 100% !important;
      height: 100% !important;
      font-family: 'Segoe UI', Arial, sans-serif;
    }

    .container {
      background: #fff;
      max-width: 440px;
      width: 100%;
      margin: 56px auto;
      padding: 40px 34px 30px;
      border-radius: 18px;
      box-shadow: 0 10px 32px rgba(60, 80, 110, 0.15);
      text-align: center;
      position: relative;
    }

    .ribbon {
      background: linear-gradient(90deg, #92d6ff 0%, #a1b7ff 100%);
      height: 8px;
      width: 115%;
      position: absolute;
      top: 0;
      left: -7.5%;
      border-top-left-radius: 18px;
      border-top-right-radius: 18px;
    }

    .brand-logo {
      width: 52px;
      height: 52px;
      margin: 16px 0 14px;
      border-radius: 16px;
      box-shadow: 0 2px 16px rgba(85, 150, 250, 0.1);
      background: #f2f8fe;
      object-fit: cover;
    }

    h2 {
      color: #223d67;
      font-size: 1.7rem;
      margin-bottom: 16px;
      font-weight: 700;
      letter-spacing: -0.01em;
    }

    .greeting {
      color: #3e5070;
      font-size: 1.13rem;
      margin-top: 12px;
    }

    p {
      color: #435070;
      font-size: 1.05rem;
      line-height: 1.7;
      margin: 22px 0 0;
    }

    .btn {
      display: inline-block;
      padding: 15px 36px;
      margin: 38px auto 10px;
      background: #000000;
      color: #ffffff !important;
      text-decoration: none;
      font-size: 1.14rem;
      font-weight: 700;
      border-radius: 28px;
      box-shadow: 0 4px 12px rgba(0, 0, 0, 0.15);
      transition: background 0.2s;
    }

    .btn:hover {
      background: #1a1a1a;
      color: #f2f2f2 !important;
    }

    .secondary {
      font-size: 0.99rem;
      color: #8CA0C4;
      margin-top: 20px;
    }

    hr {
      border: none;
      border-top: 1px solid #e3eaf3;
      margin: 36px auto 16px;
      width: 67%;
    }

    .footer {
      margin-top: 32px;
      color: #95a3bf;
      font-size: 0.99rem;
      letter-spacing: 0.01em;
    }

    @media only screen and (max-width: 580px) {
      .container {
        max-width: 98vw;
        padding: 20px 2vw 14px;
        border-radius: 10px;
      }

      .btn {
        width: 94vw;
        max-width: 290px;
        padding: 15px 8vw;
      }

      hr {
        width: 84%;
      }

      .brand-logo {
        width: 40px;
        height: 40px;
        margin-top: 8px;
      }
    }
  </style>
</head>
<body>
  <div class="container">
    <div class="ribbon"></div>
    <img src="https://upload.wikimedia.org/wikipedia/commons/2/29/Keycloak_Logo.png" alt="Logo" class="brand-logo" />
    
    <h2>Reset Your Password</h2>
    <div class="greeting">
      Hello <strong>User</strong>,
    </div>
    <p>
      We received a request to reset your <strong>Gnosis TMS</strong> account password.<br>
      If this was you, please click the button below to create a new password.
    </p>

    <a href="https://your-reset-link.com" class="btn">Reset Password</a>

    <p class="secondary">
      If you did not request a password reset, you can safely ignore this message. Your password will remain unchanged.
    </p>

    <hr />

    <p class="footer">
      Thank you,<br>
      The Gnosis TMS Team
    </p>
  </div>
</body>
</html>
