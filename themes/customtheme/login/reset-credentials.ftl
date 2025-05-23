<!-- reset-credentials.ftl -->
<!DOCTYPE html>
<html lang="${locale}">
<head>
  <meta charset="UTF-8"/>
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <title>${msg("resetPasswordTitle")}</title>
   <style>
        body { 
         background:url('${url.resourcesPath}/img/login_bg.png') center/contain no-repeat;
        font-family: Arial, sans-serif; background: #f8f8f9; }
        .kc-content-wrapper { max-width: 400px; margin: 80px auto; background: #fff; padding: 2em; border-radius: 8px; box-shadow: 0 0 10px #ccc;}
        label { margin-bottom: 4px; }
        button { padding: 10px 14px; background: #000; color: white; border: none; border-radius: 4px; cursor: pointer; font-weight:bold;}
        button:hover { background: #171717;}
        .header { text-align: center; margin-bottom: 24px; }
        form {
        display: flex;
        
        }
    </style>
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
