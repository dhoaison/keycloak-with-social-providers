<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>${msg("identityProviderLinkSubject")}</title>
    <link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css" rel="stylesheet">
    <style>
        /* Email client compatibility: inline styles for critical elements */
        .container { max-width: 600px; margin: 0 auto; padding: 20px; font-family: Arial, sans-serif; }
        .card { border: 1px solid #e5e7eb; border-radius: 8px; box-shadow: 0 2px 4px rgba(0,0,0,0.1); }
        .button { display: inline-block; padding: 12px 24px; background-color: #2563eb; color: white; text-decoration: none; border-radius: 6px; font-weight: 600; }
        .button:hover { background-color: #1d4ed8; }
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
            <h1 class="text-2xl font-bold text-gray-800">${msg("identityProviderLinkSubject")}</h1>
            <p class="text-sm text-gray-600">Secure Account Linking for ${realmName}</p>
        </div>

        <!-- Content -->
        <div class="p-6">
            <p class="text-gray-700 mb-4">
                ${msg("identityProviderLinkBodyHtml", identityProviderAlias, realmName, identityProviderContext.username, link)}
            </p>
            <div class="text-center">
                <a href="${link}" class="button">
                    ${msg("identityProviderLinkClickHere")}
                </a>
            </div>
        </div>

        <!-- Footer -->
        <div class="text-center py-4 text-sm text-gray-500 border-t border-gray-200">
            <p>This email was sent by ${realmName}. Please do not reply directly to this email.</p>
            <p>If you did not initiate this action, contact our support team immediately.</p>
        </div>
    </div>
</body>
</html>