<!-- action-token.ftl -->
<!DOCTYPE html>
<html lang="${locale}">
<head>
  <meta charset="UTF-8"/>
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <title>${msg("actionTokenTitle")}</title>
  <link rel="stylesheet" href="${url.themeResource('css/login.css')}"/>
</head>
<body>
  <div class="kc-content-wrapper">
    <div id="kc-header">
      <div id="kc-logo">
        <#-- show realm name or fallback -->
        <span>${realmName?if_exists!}</span>
      </div>
    </div>
    <div id="kc-content">
      <div id="kc-page-title">
        <h1>${msg("actionTokenTitle")}</h1>
      </div>
      <div class="kc-login-reset-password">
        <p class="kc-content-text">${msg("actionTokenMessage")}</p>
        <form id="kc-update-password-form"
              onsubmit="passwordConfirm() && login.disabled=true; return true;"
              action="${url.loginAction}" method="post">
          <#-- requiredActions hidden fields -->
          <#list requiredActions as action>
            <input type="hidden" name="requiredActions" value="${action}"/>
          </#list>
          <div class="form-group">
            <label for="password" class="control-label">${msg("password")}</label>
            <input id="password" name="password" type="password" class="form-control" autofocus/>
          </div>
          <div class="form-group">
            <label for="password-confirm" class="control-label">${msg("passwordConfirm")}</label>
            <input id="password-confirm" name="password-confirm" type="password" class="form-control"/>
          </div>
          <div class="form-actions">
            <input type="submit"
                   class="btn btn-primary btn-block"
                   value="${msg("doSubmit")}"/>
          </div>
        </form>
      </div>
    </div>
    <div id="kc-footer"></div>
  </div>
  <script src="${url.themeResource('js/login.js')}"></script>
</body>
</html>

<!-- reset-credentials.ftl -->
<!DOCTYPE html>
<html lang="${locale}">
<head>
  <meta charset="UTF-8"/>
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <title>${msg("resetPasswordTitle")}</title>
  <link rel="stylesheet" href="${url.themeResource('css/login.css')}"/>
</head>
<body>
  <div class="kc-content-wrapper">
    <div id="kc-header">
      <div id="kc-logo">
        <span>${realmName?if_exists!}</span>
      </div>
    </div>
    <div id="kc-content">
      <div id="kc-page-title">
        <h1>${msg("resetPasswordTitle")}</h1>
      </div>
      <div class="kc-content">
        <p class="kc-intro">${msg("resetPasswordIntro")}</p>
        <form id="kc-reset-password-form"
              onsubmit="login.disabled=true; return true;"
              action="${url.loginAction}" method="post">
          <div class="form-group">
            <label for="username" class="control-label">${msg("username")}</label>
            <input id="username" name="username" type="text" class="form-control" autofocus/>
          </div>
          <div class="form-actions">
            <input type="submit"
                   class="btn btn-primary btn-block"
                   value="${msg("resetPasswordSubmit")}"/>
          </div>
        </form>
      </div>
    </div>
    <div id="kc-footer"></div>
  </div>
  <script src="${url.themeResource('js/login.js')}"></script>
</body>
</html>
