<!DOCTYPE html>
<html lang="${locale}">
<head>
  <meta charset="UTF-8">
  <title>${realm.displayName!realm.name} – Log In</title>
  
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="${url.resourcesPath}/css/styles.css" rel="stylesheet" />
<link href="https://fonts.googleapis.com/css2?family=Public+Sans:ital,wght@0,100..900;1,100..900&display=swap" rel="stylesheet">
  <style>

    form {
      display:grid; 
    }
 
    .form-group {
      position: relative;
      margin-bottom: 1rem;
    }

    .divider {
      display:flex; align-items:center;
      text-transform:uppercase;
      color:var(--subtext); font-size:.75rem;
      margin:1.5rem 0;
    }
    .divider::before, .divider::after {
      content:''; flex:1; height:1px; background:var(--border);
    }
    .divider::before { margin-right:.75em }
    .divider::after { margin-left:.75em }

    .social {
      display:flex; justify-content:center; flex-direction: column
    }
  
    .links {
  margin-top: 1.5rem;
  display: flex;
  justify-content: space-between;
  gap: 8px;
  font-size: 0.875rem;
  color: var(--text);
      flex-direction: column;

  }
    
  </style>
  <script>
    function disableLogin() {
      const btn = document.getElementById("kc-login");
      if (btn) btn.disabled = true;
      return true;
    }

    function handleSubmit(e) {
      const btn = document.getElementById('kc-login');
      btn.disabled = true;
      btn.classList.add('loading');
      return true;
    }
  </script>
</head>
<body>
  <div class="card">
    <img src="${url.resourcesPath}/img/logo.png" alt="Logo" class="logo"/>

    <h3 class="login-title">Sign in to Gnosis TMS</h3>
    <form action="${url.loginAction}" method="post" onsubmit="return handleSubmit(event)">
      <div class="form-group">
        <input type="text" id="username" name="username" class="form-control"
               value="${(login.username!'')}"
               placeholder=""
               autocomplete="username" required autofocus />
        <label for="username" class="form-label">Email</label>
      </div>
      <div class="form-group">
        <input type="password" id="password" name="password" class="form-control"
               value="${(login.password!'')}"
               placeholder=""
               autocomplete="current-password" required />
        <label for="password" class="form-label">Password</label>
      </div>
      <button id="kc-login" class="primary" type="submit">Continue</button>
    </form>
    <div class="links">
    <div >
    <#if message?has_content && message.type=='error'>
    <div class="error-msg">
        <div>${message.summary}</div>
     </div>
    </#if>
     </div>
     <div class="register-wrapper">
    
    <a href="${url.loginResetCredentialsUrl}">Forgot password?</a>
 
  </div>
</div>
    <#if social.providers?has_content>
      <div class="divider">or</div>
      <div class="social">
        <#list social.providers as idp>
          <form action="${idp.loginUrl}" method="post">
            <button type="submit" class="btn-social ${idp.alias}"
                    aria-label="Continue with ${idp.displayName}">
                   <img
            src="<#if idp.alias == 'apple'>
                  https://img.icons8.com/?size=100&id=30840&format=png&color=000000
                 <#else>
                   ${url.resourcesPath}/img/${idp.alias}.svg
                 </#if>"
            alt="${idp.alias} icon"
            class="btn-social-icon"/>

                              <span><#if idp.alias == 'apple'>
                              Continue with Apple
                 <#else>
                 ${idp.displayName}
                 </#if></span>
            </button>
          </form>
        </#list>
      </div>
    </#if>
<#if realm.registrationAllowed>
    <div class="register-wrapper">
    <span class="subtext">Don't have an account?</span>
    <a href="${url.registrationUrl}">Sign up</a>
    </div>
  </#if>
   
</div>
</body>
</html>
