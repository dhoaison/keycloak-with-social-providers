<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>${msg("identityProviderLinkSubject")}</title>
    <link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css" rel="stylesheet">
    <style>
        /* Additional inline styles for consistency */
        body { font-family: Arial, sans-serif; }
        .container { max-width: 600px; }
        .card { box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1); }
        .button { transition: background-color 0.2s; }
        .button:hover { background-color: #333333; }
        .secondary-link:hover { color: #1d4ed8; }
    </style>
</head>
<body class="bg-gray-100 flex items-center justify-center min-h-screen">
    <div class="container mx-auto p-4">
        <div class="bg-white card rounded-lg p-6">
            <!-- Header -->
            <div class="text-center mb-6">
                <h1 class="text-2xl font-bold text-gray-800">${msg("identityProviderLinkSubject")}</h1>
                <p class="text-sm text-gray-600">Link your account with ${identityProviderAlias}</p>
            </div>

            <!-- Content -->
            <div class="space-y-4">
                <p class="text-gray-700">
                    You need to verify your email address to link your account with ${identityProviderAlias}.
                </p>
                <p class="text-gray-700">
                    An email with instructions to link ${identityProviderAlias} account 
                    <span class="font-semibold">${identityProviderContext.username}</span> 
                    with your ${realmName} account has been sent to you.
                </p>
                <p class="text-gray-700">
                    Haven't received a verification code in your email? 
                    <a href="${resendLink}" class="text-blue-600 hover:underline secondary-link">Click here to re-send the email</a>.
                </p>
                <p class="text-gray-700">
                    If you already verified the email in a different browser, 
                    <a href="${continueLink}" class="text-blue-600 hover:underline secondary-link">Click here to continue</a>.
                </p>
                <div class="text-center mt-6">
                    <a href="${resendLink}" class="inline-block bg-black text-white font-semibold py-3 px-6 rounded-lg button">
                        Resend Verification Email
                    </a>
                </div>
            </div>

            <!-- Footer -->
            <div class="mt-6 text-center text-sm text-gray-500 border-t pt-4">
                <p>Powered by ${realmName}</p>
            </div>
        </div>
    </div>
</body>
</html>