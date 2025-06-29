<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Link Your Social Account</title>
    <link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://dhoaison.github.io/keycloak-with-social-providers/styles.css">
    <style>
        /* Email client compatibility: inline styles for critical elements */
        .container { max-width: 600px; margin: 0 auto; padding: 20px}
        @media only screen and (max-width: 600px) {
            .container { padding: 10px; }
            .button { width: 100%; text-align: center; }
        }
    </style>
</head>
<body class="bg-gray-100">
    <div class="container bg-white card">
        <!-- Header with branding -->
        <div class="text-center py-6 border-b border-gray-200">
            <h1 class="text-2xl font-bold text-gray-800">Link Your Social Account</h1>
            <p class="text-sm text-gray-600">Secure Account Linking for Gnosis TMS</p>
        </div>

        <!-- Content -->
        <div class="p-6">
            <p class="text-gray-700 mb-4">
                Hello <strong>${identityProviderContext.username}</strong>,
            </p>
            <p class="text-gray-700 mb-4">
                We received a request to link your <strong>${identityProviderAlias}</strong> account to your Gnosis TMS account. This will allow you to sign in using your social account credentials.
            </p>
            <p class="text-gray-700 mb-6">
                If this was you, please click the button below to complete the account linking process.
            </p>
            <a href="${link}" class="button">
                <button class="primary">Link Account</button>
            </a>
        </div>

        <!-- Footer -->
        <div class="text-center py-4 text-sm text-gray-500 border-t border-gray-200">
            <p>This email was sent by ${realmName}. Please do not reply directly to this email.</p>
            <p>If you did not initiate this action, contact our support team immediately.</p>
        </div>
    </div>
</body>
</html>