<!DOCTYPE html>
<html lang="${locale! 'en'}">
<head>
  <meta charset="UTF-8" />
  <title>Reset Your Password</title>
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <style>
    /* RESET STYLES FOR EMAIL COMPATIBILITY */
    body, table, td, a { -webkit-text-size-adjust:100%; -ms-text-size-adjust:100%; }
    table, td { mso-table-lspace:0pt; mso-table-rspace:0pt; }
    img { -ms-interpolation-mode:bicubic; }
    body {margin:0; padding:0; background-color:#f5f7fa;}
    img { border:0; height:auto; line-height:100%; outline:none; text-decoration:none; }
    table { border-collapse:collapse !important; }
    body, #bodyTable, #bodyCell { height:100% !important; margin:0; padding:0; width:100% !important; }

    /* MAIN CONTAINER */
    .container {
      background: #fff;
      max-width: 440px;
      width: 100%;
      margin: 56px auto 0 auto;
      padding: 40px 34px 30px 34px;
      border-radius: 18px;
      box-shadow: 0 10px 32px 0 rgba(60, 80, 110, 0.15);
      text-align: center;
      font-family: 'Segoe UI', Arial, sans-serif;
      position: relative;
      overflow: hidden;
    }
    /* Decorative ribbon at the top */
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
    /* Logo/Image styling */
    .brand-logo {
      width: 52px;
      height: 52px;
      margin-top: 16px;
      margin-bottom: 14px;
      border-radius: 16px;
      box-shadow: 0 2px 16px 0 rgba(85,150,250,0.10);
      object-fit: cover;
      background: #f2f8fe;
    }
    h2 {
      color: #223d67;
      font-size: 1.7rem;
      margin-bottom: 16px;
      line-height: 1.18;
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
      margin: 22px 0 0 0;
    }
    .btn {
      display: inline-block;
      padding: 15px 36px;
      box-shadow: 0 4px 12px 0 rgba(49, 120, 209, 0.13);
      background: linear-gradient(96deg, #3178d1 6%, #5fdfff 100%);
      color: #fff !important;
      text-decoration: none;
      font-size: 1.14rem;
      font-weight: 700;
      border-radius: 28px;
      margin: 38px auto 10px auto;
      border: none;
      letter-spacing: 0.02em;
      transition: background 0.2s;
      position: relative;
    }
    .btn:hover, .btn:active {
      background: linear-gradient(93deg, #2363af 0%, #3cc1ee 98%);
      color: #eaf6ff !important;
      text-decoration: none;
    }
    .info-link {
      word-break: break-all;
      font-size: 0.99rem;
      color: #1d91cf;
      text-decoration: underline;
      margin-bottom: 0;
      display: inline-block;
    }
    .secondary {
      font-size: 0.99rem;
      color: #8CA0C4;
      margin-top: 20px;
      margin-bottom: 2px;
    }
    .footer {
      margin-top: 32px;
      color: #95a3bf;
      font-size: 0.99rem;
      letter-spacing: 0.01em;
    }
    hr {
      border: none;
      border-top: 1px solid #e3eaf3;
      margin: 36px auto 16px auto;
      width: 67%;
    }
    /* Responsive for mobile */
    @media only screen and (max-width:580px){
      .container { 
        max-width: 98vw !important; 
        padding: 20px 2vw 14px 2vw !important; 
        border-radius: 10px !important;
      }
      .btn { width: 94vw !important; max-width: 290px !important; padding: 15px 8vw !important; }
      hr { width: 84% !important; }
      .brand-logo {
        width: 40px; height: 40px; margin-top: 8px;
      }
    }
  </style>
</head>
<body bgcolor="#f5f7fa" style="margin:0; padding:0;">
  <!--[if (gte mso 9)|(IE)]>
    <table width="440" align="center" cellpadding="0" cellspacing="0" border="0"><tr><td>
  <![endif]-->
  <div class="container">
    <div class="ribbon"></div>
    <!-- Logo example: you can replace src below with your brand logo or remove img if you don't want a logo -->
    <img src="https://upload.wikimedia.org/wikipedia/commons/2/29/Keycloak_Logo.png" alt="Logo" class="brand-logo" />
    <h2>Reset Your Password</h2>
    <div class="greeting">
      Hello <strong>${user.username!user.email! "User"}</strong>,
    </div>
    <p>
      We received a request to reset your <strong>${realmName}</strong> account password.
      <br>If this was you, please click the button below to create a new password:
    </p>
    <a href="${link?string}" class="btn">Reset Password</a>
    <p class="secondary">
      If you did not request a password reset, you can safely ignore this message. Your password will remain unchanged.
    </p>
    <hr />
    <p class="footer">
      Thank you,<br>
      The ${realmName} Team
    </p>
  </div>
  <!--[if (gte mso 9)|(IE)]>
    </td></tr></table>
  <![endif]-->
</body>
</html>
