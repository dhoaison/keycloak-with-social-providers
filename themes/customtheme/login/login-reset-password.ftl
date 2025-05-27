<!DOCTYPE html>
<html lang="${locale}">
<head>
  <meta charset="UTF-8">
  <title>${realm.displayName!realm.name} – Forgot Password</title>
  <style>
    body {
      font-family: Arial, sans-serif;
      background-color: #f4f4f4;
      display: flex;
      justify-content: center;
      align-items: center;
      height: 100vh;
      margin: 0;
      background: url('${url.resourcesPath}/img/login_bg.png') center/contain no-repeat;
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
      color: #000;
      text-decoration: none;
      font-weight: 500;
    }

    .form-actions a:hover {
      text-decoration: underline;
    }

    .submit-btn {
      background-color: #3366FF;
      color: #fff;
      border: none;
      padding: 10px 20px;
      border-radius: 4px;
      cursor: pointer;
    }

    .submit-btn:hover {
      background-color: #222;
    }

    .toast {
      visibility: hidden;
      min-width: 220px;
      background-color: #333;
      color: #fff;
      text-align: center;
      border-radius: 6px;
      padding: 12px 20px;
      position: fixed;
      bottom: 30px;
      left: 50%;
      transform: translateX(-50%);
      z-index: 999;
      transition: visibility 0s, opacity 0.3s ease;
      opacity: 0;
    }

    .toast.show {
      visibility: visible;
      opacity: 1;
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
        <div class="error-message" id="error-message" style="display:none;"></div>
      </div>
      <div class="form-actions">
        <a href="${url.loginUrl}">${msg("backToLogin")}</a>
        <button type="submit" class="submit-btn">${msg("doSubmit")}</button>
      </div>
    </form>
  </div>

  <div id="toast" class="toast">Reset email sent successfully.</div>

  <script>
    const form = document.getElementById('kc-reset-password-form');
    const usernameInput = document.getElementById('username');
    const errorDiv = document.getElementById('error-message');
    const toast = document.getElementById('toast');

    form.addEventListener('submit', function (e) {
      const email = usernameInput.value.trim();
      const isValidEmail = /^[^\s@]+@[^\s@]+\.[^\s@]+$/.test(email);

      if (!email) {
        e.preventDefault();
        errorDiv.textContent = "Email is required.";
        errorDiv.style.display = "block";
        return;
      }

      if (!isValidEmail) {
        e.preventDefault();
        errorDiv.textContent = "Please enter a valid email address.";
        errorDiv.style.display = "block";
        return;
      }

      errorDiv.style.display = "none";

      // Show toast before submitting
      e.preventDefault(); // prevent immediate submission
      toast.classList.add("show");

      setTimeout(() => {
        form.submit(); // submit after toast
      }, 1000);
    });
  </script>
</body>
</html>
