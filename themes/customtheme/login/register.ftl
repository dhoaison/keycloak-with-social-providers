<!DOCTYPE html>
<html lang="${locale}">
<head>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Public+Sans:ital,wght@0,100..900;1,100..900&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://dhoaison.github.io/keycloak-with-social-providers/styles.css">
    <title>${msg("registerTitle")}</title>
    <style>
form {
         display: flex;
         flex-direction: column;
         gap: 20px;
         margin-top: 20px;
        }

        button {
            margin-bottom: 24px
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
    <div class="card">
        <img src="${url.resourcesPath}/img/logo.png" alt="Logo" class="logo"/>
        <h3 >Register</h3>
     <#if message?has_content && message.type = 'error'>
            <div class="alert alert-error error-msg">
                <#assign errors = message.summary?split("<br>")>
                    <#list errors as error>
                        <p>${error}
                        <script>
                            document.getElementById('email').focus();
                        </script>
                        <#break> <!-- Stop after displaying the email error -->
                </#list>
            </div>
        </#if>

        <form id="kc-register-form" action="${url.registrationAction}" method="post" onsubmit="return handleSubmit(event)">
            <input type="hidden" id="username" name="username" />
            
            <div class="input-wrapper">
                <input type="text" id="fullName" name="fullName" 
                    value="${((register.formData.firstName)!'')}${((register.formData.lastName)!'')}"
                    placeholder="" required autofocus />
                <label for="fullName" class="form-label">Full name</label>
            </div>
            
            <!-- Hidden fields for firstName and lastName -->
            <input type="hidden" id="firstName" name="firstName" />
            <input type="hidden" id="lastName" name="lastName" />

            <div class="input-wrapper">
                <input type="email" id="email" name="email" 
                    value="${(register.formData.email!'')}" 
                     placeholder="" required />
                <label for="email" class="form-label">Email</label>
            </div>

            <div class="input-wrapper">
                <input type="password" id="password" name="password" 
                    value="${(register.formData.password!'')}"
                     placeholder="" required />
                <label for="password" class="form-label">Password</label>
            </div>

            <div class="input-wrapper">
                <input type="password" id="password-confirm" name="password-confirm" 
                    placeholder="" required />
                <label for="password-confirm" class="form-label">Confirm password</label>
            </div>

            <button type="submit" id="kc-register" class="primary">${msg("doRegister")}</button>
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
