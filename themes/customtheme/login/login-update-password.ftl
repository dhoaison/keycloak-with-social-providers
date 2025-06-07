<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>${msg("updatePasswordTitle")}</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <style>
        body { 
            margin: 0;
            padding: 0;
            min-height: 100vh;
            display: flex;
            align-items: center;
            justify-content: center;
            font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, Helvetica, Arial, sans-serif;
            background: #f5f6fa;
        }

        .card {
            background: white;
            border-radius: 16px;
            box-shadow: 0 20px 50px rgba(0,0,0,0.08);
            width: 100%;
            max-width: 360px;
            padding: 2rem;
            text-align: center;
            border: 1px solid #DFE3E8;
        }

        .logo {
            width: 48px;
            margin-bottom: 1.5rem;
            opacity: .85;
        }

        h1 {
            text-align: center;
            font-size: 1.5rem;
            font-weight: 600;
            color: #1a1a1a;
            margin-bottom: 1.5rem;
        }

        .form-group {
            position: relative;
            margin-bottom: 1rem;
            display: flex;
        }

        .form-control {
            width: 100%;
            padding: 1rem 0.75rem;
            border: 1px solid #e1e1e1;
            border-radius: 8px;
            font-size: 1rem;
            transition: all 0.2s ease;
            background: transparent;
        }

        .form-control:focus {
            border-color: #3366FF;
            outline: none;
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

        .form-control:focus + .form-label,
        .form-control:not(:placeholder-shown) + .form-label {
            top: -0.5rem;
            font-size: 0.75rem;
            color: #919EAB;
        }

        .form-control::placeholder {
            color: transparent;
        }

        .form-control:focus::placeholder {
            color: #999;
        }

        button.primary {
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

        button.primary:hover {
            background: #3366FF;
        }

        button.primary:disabled {
            opacity: 0.7;
            cursor: not-allowed;
        }

        button.primary.loading {
            color: transparent;
        }

        button.primary.loading::after {
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

        .error {
            display: flex;
            align-items: center;
            justify-content: center;
            color: #FF3B30;
            font-size: .875rem;
            text-align: left;
            margin-bottom: 1rem;
        }
    </style>
</head>
<body>
    <div class="card">
        <img src="${url.resourcesPath}/img/logo.png" alt="Logo" class="logo"/>
        <h1>${msg("updatePasswordTitle")}</h1>

        <#if message?has_content && (message.summary?has_content)>
            <div class="error">${message.summary}</div>
        </#if>

        <form id="kc-passwd-update-form" action="${url.loginAction}" method="post" onsubmit="return handleSubmit(event)">
            <div class="form-group">
                <input type="password" id="password-new" name="password-new" 
                    class="form-control"
                    placeholder="Enter new password"
                    autofocus required />
                <label for="password-new" class="form-label">${msg("passwordNew")}</label>
            </div>

            <div class="form-group">
                <input type="password" id="password-confirm" name="password-confirm" 
                    class="form-control"
                    placeholder="Confirm new password"
                    required />
                <label for="password-confirm" class="form-label">${msg("passwordConfirm")}</label>
            </div>

            <button type="submit" id="submit-btn" class="primary">${msg("doSubmit")}</button>
        </form>
    </div>

    <script>
        function handleSubmit(e) {
            const btn = document.getElementById('submit-btn');

            btn.disabled = true;
            btn.classList.add('loading');
            return true;
        }
    </script>
</body>
</html>
