<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>${msg("updatePasswordTitle")}</title>
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <style>
    body {
      font-family: Arial, sans-serif;
      background: #f8f8f9;
      margin: 0;
      padding: 0;
    }

    .container {
      max-width: 400px;
      margin: 40px auto;
      background: #fff;
      padding: 2em 2em 1em 2em;
      border-radius: 8px;
      box-shadow: 0 0 10px #ccc;
    }

    form {
      display: flex;
      flex-direction: column;
    }

    label {
      margin-bottom: 4px;
    }

    input[type=password] {
      margin-bottom: 16px;
      padding: 8px;
      border: 1px solid #bbb;
      border-radius: 4px;
    }

    input[type=submit] {
      padding: 10px;
      background: #000;
      color: white;
      border: none;
      border-radius: 4px;
      cursor: pointer;
      font-weight: bold;
      transition: background 0.3s ease;
    }

    input[type=submit]:hover {
      background: #222;
    }

    .header {
      text-align: center;
      margin-bottom: 24px;
    }

    .error {
      color: #ae1c17;
      font-size: 0.95em;
      margin-bottom: 1em;
      text-align: center;
    }
  </style>
</head>
<body>
  <div class="container">
    <div class="header">
      <h2>${msg("updatePasswordTitle")}</h2>
    </div>

    <#if message?has_content && (message.summary?has_content)>
      <div class="error">${message.summary}</div>
    </#if>

    <form id="kc-passwd-update-form" action="${url.loginAction}" method="post" autocomplete="off">
      <label for="password-new">${msg("passwordNew")}</label>
      <input type="password" id="password-new" name="password-new" autofocus autocomplete="new-password" required />

      <label for="password-confirm">${msg("passwordConfirm")}</label>
      <input type="password" id="password-confirm" name="password-confirm" autocomplete="new-password" required />

      <input type="submit" value="${msg("doSubmit")}" />
    </form>
  </div>
</body>
</html>
