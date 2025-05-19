<#import "common.ftl" as common>
${common.renderHeader()}

<body class="sleek-welcome">
  <div class="welcome-container">
    <h1>Welcome to MyApp!</h1>
    <p>Your account has been created successfully.</p>
    <a href="${url.loginAction}" class="btn">Proceed to Login</a>
  </div>
</body>

${common.renderFooter()}