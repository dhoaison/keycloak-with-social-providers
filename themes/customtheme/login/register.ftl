<!DOCTYPE html>
<html lang="${locale}">
<head>
  <meta charset="UTF-8">
  <title>${realm.displayName!realm.name} – Register</title>
  <style>
    /* Add your custom CSS styles here */
{

  box-sizing: border-box;
}

body {
  font-family: Arial, sans-serif;
  background-color: #f4f4f4;
  display: flex;
  justify-content: center;
  align-items: center;
  margin: 0;
  padding: 0;
  min-height: 100vh;
        background:url('${url.resourcesPath}/img/login_bg.png') center/contain no-repeat;
}

.container {
  background-color: #fff;
  padding: 20px;
  border-radius: 8px;
  box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
  width: 100%;
  max-width: 400px;
  margin: 5rem; /* fixed spacing syntax */
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

input[type="text"],
input[type="email"],
input[type="password"] {
  width: 100%;
  padding: 10px;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box; /* Ensure no overflow */
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
  color: #007bff;
  text-decoration: none;
}

.form-actions a:hover {
  text-decoration: underline;
}

.submit-btn {
  background-color: #007bff;
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
    <h1>${msg("registerTitle")}</h1>
    <form id="kc-register-form" action="${url.registrationAction}" method="post">
      <div class="form-group">
        <label for="firstName">${msg("firstName")}</label>
        <input type="text" id="firstName" name="firstName" value="${(register.formData.firstName!'')}" required>
        <#if messagesPerField.existsError('firstName')>
          <div class="error-message">${kcSanitize(messagesPerField.get('firstName'))?no_esc}</div>
        </#if>
      </div>
      <div class="form-group">
        <label for="lastName">${msg("lastName")}</label>
        <input type="text" id="lastName" name="lastName" value="${(register.formData.lastName!'')}" required>
        <#if messagesPerField.existsError('lastName')>
          <div class="error-message">${kcSanitize(messagesPerField.get('lastName'))?no_esc}</div>
        </#if>
      </div>
      <div class="form-group">
        <label for="email">${msg("email")}</label>
        <input type="email" id="email" name="email" value="${(register.formData.email!'')}" required>
        <#if messagesPerField.existsError('email')>
          <div class="error-message">${kcSanitize(messagesPerField.get('email'))?no_esc}</div>
        </#if>
      </div>
      <div class="form-group">
        <label for="username">${msg("username")}</label>
        <input type="text" id="username" name="username" value="${(register.formData.username!'')}" required>
        <#if messagesPerField.existsError('username')>
          <div class="error-message">${kcSanitize(messagesPerField.get('username'))?no_esc}</div>
        </#if>
      </div>
      <div class="form-group">
        <label for="password">${msg("password")}</label>
        <input type="password" id="password" name="password" required>
        <#if messagesPerField.existsError('password')>
          <div class="error-message">${kcSanitize(messagesPerField.get('password'))?no_esc}</div>
        </#if>
      </div>
      <div class="form-group">
        <label for="password-confirm">${msg("passwordConfirm")}</label>
        <input type="password" id="password-confirm" name="password-confirm" required>
        <#if messagesPerField.existsError('password-confirm')>
          <div class="error-message">${kcSanitize(messagesPerField.get('password-confirm'))?no_esc}</div>
        </#if>
      </div>
      <div class="form-actions">
        <a href="${url.loginUrl}">${msg("backToLogin")}</a>
        <button type="submit" class="submit-btn">${msg("doRegister")}</button>
      </div>
    </form>
  </div>
</body>
</html>