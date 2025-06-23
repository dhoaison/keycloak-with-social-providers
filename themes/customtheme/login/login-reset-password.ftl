<!DOCTYPE html>
<html lang="${locale}">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Public+Sans:ital,wght@0,100..900;1,100..900&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://dhoaison.github.io/keycloak-with-social-providers/styles.css">
    <title>${msg("emailForgotTitle")}</title>
    <style>

        button {
          margin-bottom: 24px
        }
 
    </style>
</head>
<body>
    <div class="card">
   
        <h3>Reset Password</h3>
        
        <form id="kc-reset-password-form" action="${url.loginAction}" method="post" onsubmit="return handleSubmit(event)">
            <div class="input-wrapper">
                <input type="email" id="username" name="username" 
                    value="${(auth.attemptedUsername!'')}"
                    placeholder=""
                    required />
                <label for="username" class="form-label">Email</label>
                <div class="error-msg" id="error-message" style="display:none;"></div>
            </div>

            <button type="submit" id="kc-submit" class="primary">Send password reset link</button>
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

        function handleSubmit(e) {
            const btn = document.getElementById('kc-submit');
            btn.disabled = true;
            btn.classList.add('loading');
            return true;
        }

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
