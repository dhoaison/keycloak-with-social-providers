<!DOCTYPE html>
<html lang="${locale}">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>${msg("emailForgotTitle")}</title>
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
        .reset-container {
            background: white;
            padding: 2.5rem;
            border-radius: 16px;
            box-shadow: 0 4px 24px rgba(0, 0, 0, 0.05);
            width: 100%;
            max-width: 400px;
            box-sizing: border-box;
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
        input[type="email"] {
            width: 100%;
            padding: 0.75rem;
            border: 1px solid #e1e1e1;
            border-radius: 8px;
            font-size: 1rem;
            box-sizing: border-box;
            transition: border-color 0.2s;
        }
        input:focus {
            outline: none;
            border-color: #4763E4;
        }
        .reset-button {
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
        .reset-button:hover {
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
        .error-message {
            color: #FF3B30;
            font-size: 0.875rem;
            margin-top: 0.5rem;
        }
        .toast {
            position: fixed;
            bottom: 24px;
            left: 50%;
            transform: translateX(-50%);
            background: #1e1e1e;
            color: white;
            padding: 16px 24px;
            border-radius: 8px;
            font-size: 0.9rem;
            opacity: 0;
            visibility: hidden;
            transition: opacity 0.3s, visibility 0.3s;
            box-shadow: 0 4px 12px rgba(0,0,0,0.15);
        }
        .toast.show {
            opacity: 1;
            visibility: visible;
        }
    </style>
</head>
<body>
    <div class="reset-container">
   
        <h1>Reset Password</h1>
        
        <form id="kc-reset-password-form" action="${url.loginAction}" method="post">
            <div class="form-group">
                <label for="username">Email</label>
                <input type="email" id="username" name="username" 
                    value="${(auth.attemptedUsername!'')}"
                    placeholder="Enter your email"
                    required />
                <div class="error-message" id="error-message" style="display:none;"></div>
            </div>

            <button type="submit" class="reset-button">Send password reset link</button>
        </form>

        <div class="login-link">
            <a href="${url.loginUrl}">Back to login page</a>
        </div>
    </div>

    <div id="toast" class="toast">Password reset link has been sent to your email</div>

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
            
            // Show success toast
            e.preventDefault();
            toast.classList.add('show');
            
            // Hide toast after 3 seconds and submit form
            setTimeout(() => {
                toast.classList.remove('show');
                form.submit();
            }, 3000);
        });
    </script>
</body>
</html>
