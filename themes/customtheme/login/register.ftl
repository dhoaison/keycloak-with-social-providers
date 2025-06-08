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
             border: 1px solid #DFE3E8;
             text-align: center
        }
        .logo { width:48px; margin-bottom:1.5rem; opacity:.85; }
        h1 {
            text-align: center;
            font-size: 2rem;
            font-weight: 600;
            margin: 0 0 2rem;
            color: #1a1a1a;
        }
        .form-group {
            position: relative;
            margin-bottom: 1.25rem;
            display: flex;
        }
        .form-label {
            position: absolute;
            left: 0.75rem;
            top: 1rem;
            padding: 0 0.25rem;
            background-color: white;
            font-size: 1rem;
            color: #666;
            transition: all 0.2s ease;
            pointer-events: none;
        }
        input:focus + .form-label,
        input:not(:placeholder-shown) + .form-label {
            top: -0.5rem;
            font-size: 0.75rem;
            color: #919EAB;
        }
        input::placeholder {
            color: transparent;
        }
        input:focus::placeholder {
            color: #999;
        }
        input:focus {
            border-color: #3366FF;
            outline: none;
        }
        input[type="text"],
        input[type="email"],
        input[type="password"] {
            width: 100%;
            padding: 1rem 0.75rem;
            border: 1px solid #e1e1e1;
            border-radius: 8px;
            font-size: 1rem;
            transition: all 0.2s ease;
            background: transparent;
        }
        .register-button {
            width: 100%;
            padding: 0.875rem;
            background: #3366FF;
            color: white;
            border: none;
            border-radius: 8px;
            font-size: 1rem;
            font-weight: 500;
            cursor: pointer;
            transition: all 0.2s;
            margin-top: 1rem;
            position: relative;
        }

        .register-button:disabled {
            opacity: 0.7;
            cursor: not-allowed;
        }

        .register-button.loading {
            color: transparent;
        }

        .register-button.loading::after {
            content: "";
            position: absolute;
            width: 20px;
            height: 20px;
            top: 50%;
            left: 50%;
            margin: -10px 0 0 -10px;
            border: 3px solid rgba(255,255,255,0.3);
            border-radius: 50%;
            border-top-color: #fff;
            animation: spin 1s ease-in-out infinite;
        }

        @keyframes spin {
            to { transform: rotate(360deg); }
        }

        .register-button:hover {
            background: #3951cc;
        }
        .login-link {
            text-align: center;
            margin-top: 1.5rem;
        }
        .login-link a {
            color: #3366FF;
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
            background: #FFF4F4;
            color: #FF3B30;
            border: 1px solid #FFE5E5;
            text-align: left;
            font-size: 0.875rem;
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
        <img src="${url.resourcesPath}/img/logo.png" alt="Logo" class="logo"/>
        <h1>Register</h1>
        
        <#if message?has_content && message.type = 'error'>
            <div class="alert alert-error">
                ${message.summary?no_esc}
            </div>
        </#if>

        <form id="kc-register-form" action="${url.registrationAction}" method="post" onsubmit="return handleSubmit(event)">
            <input type="hidden" id="username" name="username" />
            
            <div class="form-group">
                <input type="text" id="fullName" name="fullName" 
                    value="${((register.formData.firstName)!'')} ${((register.formData.lastName)!'')}"
                    placeholder="Enter your full name" required autofocus />
                <label for="fullName" class="form-label">Full name</label>
            </div>
            
            <!-- Hidden fields for firstName and lastName -->
            <input type="hidden" id="firstName" name="firstName" />
            <input type="hidden" id="lastName" name="lastName" />

            <div class="form-group">
                <input type="email" id="email" name="email" 
                    value="${(register.formData.email!'')}" 
                    placeholder="Enter your email" required />
                <label for="email" class="form-label">Email</label>
            </div>

            <div class="form-group">
                <input type="password" id="password" name="password" 
                    value="${(register.formData.password!'')}"
                    placeholder="Create password" required />
                <label for="password" class="form-label">Password</label>
            </div>

            <div class="form-group">
                <input type="password" id="password-confirm" name="password-confirm" 
                    placeholder="Confirm password" required />
                <label for="password-confirm" class="form-label">Confirm password</label>
            </div>

            <button type="submit" id="kc-register" class="register-button">${msg("doRegister")}</button>
        </form>

        <div class="login-link">
            <a href="${url.loginUrl}">${msg("backToLogin")}</a>
        </div>
    </div>

    <script>
        const form = document.getElementById('kc-register-form');
        const fullNameInput = document.getElementById('fullName');
        const firstNameInput = document.getElementById('firstName');
        const lastNameInput = document.getElementById('lastName');
        const emailInput = document.getElementById('email');
        const usernameInput = document.getElementById('username');

        function handleSubmit(e) {
            // Split full name into first and last name
            const fullName = fullNameInput.value.trim();
            const nameParts = fullName.split(/\s+/);
            
            firstNameInput.value = nameParts[0] || '';
            lastNameInput.value = nameParts.slice(1).join(' ') || '';
            
            // Copy email to username
            usernameInput.value = emailInput.value;

            // Add loading state
            const btn = document.getElementById('kc-register');
            btn.disabled = true;
            btn.classList.add('loading');
            
            return true;
        }
    </script>
</body>
</html>
