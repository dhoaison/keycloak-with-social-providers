<#-- error.ftl for FM ≥2.3.22 with auto-escaping enabled -->

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>${msg("errorTitle")!"Error"}</title>
</head>
<body class="login-page">
  <div class="login-container">

      <div class="kc-error-message" aria-live="polite">
        <h1>${msg("errorTitle")! "An error occurred"}</h1>
        <p>${message.summary! "Sorry, something went wrong."}</p>

      </div>
  </div>
</body>
</html>