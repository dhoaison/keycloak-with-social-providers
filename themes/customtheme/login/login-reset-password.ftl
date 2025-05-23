<!DOCTYPE html>
<html lang="${locale}">
<head>
  <meta charset="UTF-8">
  <title>${realm.displayName!realm.name} – Forgot Password</title>
  <style>
    /* Add your custom CSS styles here */
    body {
      font-family: Arial, sans-serif;
      background-color: #f4f4f4;
      display: flex;
      justify-content: center;
      align-items: center;
      height: 100vh;
      margin: 0;
      background:url('${url.resourcesPath}/img/login_bg.png') center/contain no-repeat;
    }
    .container {
      background-color: #fff;
      display: flex;
      flex-direction: column;
      padding: 20px;
      border-radius: 8px;
      box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
      width: 100%;
      max-width: 400px;
    }
    h1 {
      text-align: center;
      color: #333;
    }
    .form-group {
      margin-bottom: 15px;
    }
    label {
      display: block;
      margin-bottom: 5px;
      color: #555;
    }
    input[type="text"] {
  padding: 10px;
  border: 1px solid #ccc;
  border-radius: 4px;
  width: 100%;
  box-sizing: border-box;
}
    .error-message {
      color: #d9534f;
      font-size: 0.875em;
    }
    .form-actions {
      display: flex;
      justify-content: space-between;
      align-items: center;
    }
    .form-actions a {
      text-decoration: none;
    }
    .form-actions a:hover {
      text-decoration: underline;
    }
    .submit-btn {
      background-color: #000;
      color: #fff;
      border: none;
      padding: 10px 20px;
      border-radius: 4px;
      cursor: pointer;
    }
    .submit-btn:hover {
      background-color: #0056b3;
    }
  </style>
</head>
<body>
  <div class="container">
    <h1>${msg("emailForgotTitle")}</h1>
    <form id="kc-reset-password-form" action="${url.loginAction}" method="post">
      <div class="form-group">
        <label for="username">${msg("usernameOrEmail")}</label>
        <input type="text" id="username" name="username" value="${(auth.attemptedUsername!'')}" required>
        <#if messagesPerField.existsError('username')>
          <div class="error-message">${kcSanitize(messagesPerField.get('username'))?no_esc}</div>
        </#if>
      </div>
      <div class="form-actions">
        <a href="${url.loginUrl}">${msg("backToLogin")}</a>
        <button type="submit" class="submit-btn">${msg("doSubmit")}</button>
      </div>
    </form>
  </div>
</body>
</html>