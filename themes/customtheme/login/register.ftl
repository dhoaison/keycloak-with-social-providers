<!DOCTYPE html>
<html lang="${locale}">
<head>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>${msg("registerTitle")}</title>
    <style>
        body { 
            margin: 0;
            padding: 0;
            min-height: 100vh;
            display: flex;
            align-items: center;
            justify-content: center;
            font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, sans-serif;
            background: #f5f6fa;
        }
        .register-container {
            background: white;
            padding: 2.5rem;
            border-radius: 16px;
            box-shadow: 0 4px 24px rgba(0, 0, 0, 0.05);
            width: 100%;
            max-width: 400px;
            box-sizing: border-box;
        }
        .logo {
            text-align: center;
            margin-bottom: 2rem;
        }
        .logo img {
            max-width: 150px;
            height: auto;
        }
        h1 {
            text-align: center;
            font-size: 2rem;
            font-weight: 600;
            margin: 0 0 2rem;
            color: #1a1a1a;
        }
        .form-group {
            margin-bottom: 1.25rem;
        }
        label {
            display: block;
            margin-bottom: 0.5rem;
            color: #666;
            font-size: 0.9rem;
        }
        input[type="text"],
        input[type="email"],
        input[type="password"] {
            width: 100%;
            padding: 0.75rem;
            border: 1px solid #e1e1e1;
            border-radius: 8px;
            font-size: 1rem;
            box-sizing: border-box;
            transition: border-color 0.2s;
        }
        input[type="text"]:focus,
        input[type="email"]:focus,
        input[type="password"]:focus {
            outline: none;
            border-color: #4763E4;
        }
        .register-button {
            width: 100%;
            padding: 0.875rem;
            background: #4763E4;
            color: white;
            border: none;
            border-radius: 8px;
            font-size: 1rem;
            font-weight: 500;
            cursor: pointer;
            transition: background-color 0.2s;
            margin-top: 1rem;
        }
        .register-button:hover {
            background: #3951cc;
        }
        .login-link {
            text-align: center;
            margin-top: 1.5rem;
        }
        .login-link a {
            color: #4763E4;
            text-decoration: none;
            font-size: 0.9rem;
        }
        .login-link a:hover {
            text-decoration: underline;
        }
        .alert {
            padding: 1rem;
            border-radius: 8px;
            margin-bottom: 1.5rem;
            background: #fff3cd;
            color: #856404;
            border: 1px solid #ffeeba;
        }
    </style>
    <script>
        function copyEmailToUsername() {
            const emailInput = document.getElementById('email');
            const usernameInput = document.getElementById('username');
            usernameInput.value = emailInput.value;
            return true;
        }
    </script>
</head>
<body>
    <div class="register-container">
        <div class="logo">
            <img src="${url.resourcesPath}/img/logo.png" alt="Logo" />
        </div>
        <h1>Register</h1>
        
        <#if message?has_content && message.type = 'error'>
            <div class="alert alert-error">
                ${message.summary}
            </div>
        </#if>

        <form id="kc-register-form" action="${url.registrationAction}" method="post" onsubmit="return copyEmailToUsername()">
            <input type="hidden" id="username" name="username" />
            
            <div class="form-group">
                <label for="firstName">${msg("firstName")}</label>
                <input type="text" id="firstName" name="firstName" value="${(register.formData.firstName!'')}" 
                    placeholder="Enter your name" required autofocus />
            </div>

            <div class="form-group">
                <label for="email">${msg("email")}</label>
                <input type="email" id="email" name="email" value="${(register.formData.email!'')}" 
                    placeholder="Enter your email" required />
            </div>

            <div class="form-group">
                <label for="password">${msg("password")}</label>
                <input type="password" id="password" name="password" 
                    value="${(register.formData.password!'')}"
                    placeholder="Create password" required />
            </div>

            <div class="form-group">
                <label for="password-confirm">${msg("passwordConfirm")}</label>
                <input type="password" id="password-confirm" name="password-confirm" 
                    placeholder="Confirm password" required />
            </div>

            <input class="register-button" type="submit" value="${msg("doRegister")}"/>
        </form>

        <div class="login-link">
            <a href="${url.loginUrl}">${msg("backToLogin")}</a>
        </div>
    </div>
</body>
</html>
