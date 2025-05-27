<!DOCTYPE html>
<html lang="${locale}">
<head>
  <meta charset="UTF-8">
  <title>${realm.displayName!realm.name} – Log In</title>
  <style>
    /* Apple-style base */
    :root {
      --bg: #F2F2F7;
      --card: #FFFFFF;
      --border: #D1D1D6;
      --text: #1C1C1E;
      --subtext: #3A3A3C;
      --button-bg: #000000;
      --button-hover: #222222;
      --radius: 10px;
      --field-h: 44px;
      --ease: 0.2s ease-in-out;
    }
    *, *::before, *::after { box-sizing:border-box; margin:0; padding:0 }
    html, body { height:100% }
    body {
      background:url('${url.resourcesPath}/img/login_bg.png') center/contain no-repeat;
      font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, Helvetica, Arial, sans-serif;
      display:flex; align-items:center; justify-content:center;
    }

    .card {
      background: var(--card);
      border-radius: 16px;
      box-shadow: 0 20px 50px rgba(0,0,0,0.08);
      width:100%; max-width:360px;
      padding:2rem; text-align:center;
    }
    .logo { width:48px; margin-bottom:1.5rem; opacity:.85; }
    h1 {
      font-size:1.5rem; font-weight:600; color:var(--text);
      margin-bottom:1.5rem;
    }
    .feedback {
          display: flex;
    align-items: center;
    color: #FF3B30;
    font-size: .875rem;
    text-align: left;
    }
    .feedback-icon {
      width:16px; height:16px; margin-right:.5rem;
      background:url('${url.resourcesPath}/img/error_icon.png') center/contain no-repeat;
    }

    form {
      display:grid; gap:1rem;
    }
    input {
      height: var(--field-h);
      padding: 0 12px;
      font-size:1rem;
      border:1px solid var(--border);
      border-radius:var(--radius);
      background:var(--card);
      color:var(--text);
      transition:border-color var(--ease), box-shadow var(--ease);
    }
    input::placeholder { color:var(--subtext) }
    input:focus {
      border-color:var(--text);
      box-shadow:0 0 0 3px rgba(0,0,0,0.1);
      outline:none;
    }

    /* ——— Black “Log In” button ——— */
    button.primary {
      height: var(--field-h);
      width:100%;
      background: #3366FF;
      color: #FFF;
      font-size:1rem;
      font-weight:600;
      border:none;
      border-radius:var(--radius);
      cursor:pointer;
      transition: background var(--ease), transform .1s ease-in-out, box-shadow var(--ease);
      box-shadow:0 4px 12px rgba(0,0,0,0.12);
    }
    button.primary:hover {
      background: var(--button-hover);
      transform: translateY(-1px);
      box-shadow:0 6px 16px rgba(0,0,0,0.18);
    }
    button.primary:active {
      transform: translateY(0);
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

.btn-social {
      display: flex;
      align-items: center;
      width: 100%;
      padding: 0.5rem;
      margin-bottom: 0.75rem;
      font-size: 0.9rem;
      font-weight: 600;
      color: #555;
      background: #fff;
      border: 1px solid #ddd;
      border-radius: 6px;
      cursor: pointer;
      transition: background 0.3s, border-color 0.3s;
    }
    .btn-social-icon {
      width: 20px;
      height: 20px;
      margin-right: 0.75rem;
    }
       .btn-social.facebook {
  background: #fff;
  color: #212B36;
}
.btn-social.facebook:hover {
  background: #d6d4d4;
}

.btn-social.google {
  background: #fff;
  color: ##212B36;
}
.btn-social.google:hover {
  background: #d6d4d4;
}

     .btn-social.apple {
    background: #fff;
  color: #212B36;
     }
    .btn-social.apple:hover {
      background: #d6d4d4
    }
 
.sign-up-btn {
	font-weight: 600;
    margin-left: 2px;
    color: #000;
        text-decoration: auto;
}
.forgot-btn {
    color: #3366FF;
        text-decoration: auto;
        font-size: 16px;
        min-width: 900px
}
    .links {
      margin-top:1rem; display:flex; justify-content:space-between;
      font-size:.875rem; color:var(--text);
    }
  
    .links {
  margin-top: 1.5rem;
  display: flex;
  justify-content: space-between;
  font-size: 0.875rem;
  color: var(--text);
  }
  .no-account {
    color: #637381
    }


    .links a:hover { color: var(--button-hover) }
  </style>
  <script>
    function disableLogin() {
      const btn = document.getElementById("kc-login");
      if (btn) btn.disabled = true;
      return true;
    }
  </script>
</head>
<body>
  <div class="card">
    <img src="${url.resourcesPath}/img/logo.png" alt="Logo" class="logo"/>
    <h1>Sign in to Gnosis TMS</h1>

    <form action="${url.loginAction}" method="post" onsubmit="return disableLogin()">
      <input id="username" name="username" type="text"
             placeholder="Username or Email" value="${username!''}"
             autocomplete="username" required autofocus />
      <input id="password" name="password" type="password"
             placeholder="Password" autocomplete="current-password" required />
      <button id="kc-login" class="primary" type="submit">Sign In</button>
    </form>
    <div class="links">
    <div >
    <#if message?has_content && message.type=='error'>
    <div class="feedback">
        <div>${message.summary}</div>
     </div>
    </#if>
     </div>
     <div class="register-wrapper">
    
    <a href="${url.loginResetCredentialsUrl}" class="forgot-btn">Forgot password?</a>
 
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
    <span class="no-account">Don't have an account?</span>
    <a href="${url.registrationUrl}" class="sign-up-btn">Sign up</a>
    </div>
  </#if>
   
</div>
</body>
</html>
