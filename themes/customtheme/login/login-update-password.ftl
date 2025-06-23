<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Public+Sans:ital,wght@0,100..900;1,100..900&display=swap" rel="stylesheet">
     <link rel="stylesheet" href="https://dhoaison.github.io/keycloak-with-social-providers/styles.css">
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <style>
 

        .form-group {
            position: relative;
            margin-bottom: 1rem;
            display: flex;
        }

    </style>
</head>
<body>
    <div class="card">
        <img src="${url.resourcesPath}/img/logo.png" alt="Logo" class="logo"/>
        <h3>${msg("updatePasswordTitle")}</h3>

        <form id="kc-passwd-update-form" action="${url.loginAction}" method="post" onsubmit="return handleSubmit(event)">
            <div class="form-group">
                <input type="password" id="password-new" name="password-new" 
                    class="form-control"
                    placeholder=""
                    autofocus required />
                <label for="password-new" class="form-label">${msg("passwordNew")}</label>
            </div>

            <div class="form-group">
                <input type="password" id="password-confirm" name="password-confirm" 
                    class="form-control"
                    placeholder=""
                    required />
                <label for="password-confirm" class="form-label">${msg("passwordConfirm")}</label>
            </div>

            <button type="submit" id="submit-btn" class="primary">${msg("doSubmit")}</button>
        </form>
    </div>

    <div id="toast" class="toast"></div>

    <script>
        function handleSubmit(e) {
            const btn = document.getElementById('submit-btn');
            const newPassword = document.getElementById('password-new').value;
            const confirmPassword = document.getElementById('password-confirm').value;
            const toast = document.getElementById('toast');

            if (newPassword !== confirmPassword) {
                e.preventDefault();
                toast.textContent = 'Passwords do not match';
                toast.classList.add('show');
                
                // Hide toast after 3 seconds
                setTimeout(() => {
                    toast.classList.remove('show');
                }, 3000);
                return false;
            }

            btn.disabled = true;
            btn.classList.add('loading');
            return true;
        }
    </script>
</body>
</html>
