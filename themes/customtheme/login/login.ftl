<!DOCTYPE html>
<html lang="${locale}">
<head>
  <meta charset="UTF-8">
  <title>${realm.displayName!realm.name} – Log In</title>
  
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Public+Sans:ital,wght@0,100..900;1,100..900&display=swap" rel="stylesheet">
  <style>
    /* Apple-style base */
    :root {
      --bg: #F2F2F7;
      --card: #FFFFFF;
      --border: #D1D1D6;
      --text: #1C1C1E;
      --subtext: #637381;
      --button-bg: #000000;
      --button-hover: #222222;
      --radius: 10px;
      --field-h: 44px;
      --ease: 0.2s ease-in-out;
    }
    *, *::before, *::after { box-sizing:border-box; margin:0; padding:0 }
    html, body { height:100% }
    body {
      font-family: 'Public Sans';
      display:flex; align-items:center; justify-content:center;
    }
    
    .login-title {
font-weight: 700;
font-size: 32px;
line-height: 48px;
letter-spacing: 0px;
margin-bottom: 16px
    }

    .card {
      background: var(--card);
      border-radius: 16px;
      box-shadow: 0 20px 50px rgba(0,0,0,0.08);
      width:100%; max-width:433px;
      padding:2rem; text-align:center;
      border: 1px solid #DFE3E8;
    }
    .logo { width:48px; margin-bottom:1.5rem; opacity:.85; }

    .feedback {
          display: flex;
    align-items: center;
    justify-content: center;
    color: #FF3B30;
    font-size: .875rem;
    text-align: left;
    }
    .feedback-icon {
      width:16px; height:16px; margin-right:.5rem;
      background:url('${url.resourcesPath}/img/error_icon.png') center/contain no-repeat;
    }

    form {
      display:grid; 
    }
    input {
      padding: 0 12px;
      font-size:1rem;
      border:1px solid var(--border);
      border-radius:var(--radius);
      background:var(--card);
      color:var(--text);
      transition:border-color var(--ease), box-shadow var(--ease);
    }
    .form-group {
      position: relative;
      margin-bottom: 1rem;
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
      border-color: #4763E4;
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

    /* ——— Black "Log In" button ——— */
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
      transition: all 0.2s;
      box-shadow:0 4px 12px rgba(0,0,0,0.12);
      position: relative;
      font-family: 'Public Sans'
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
      justify-content: center;
      width: 100%;
      padding: 0.5rem;
      margin-bottom: 0.75rem;
      font-size: 14px;
      font-weight: 700;
      color: #212B36;
      background: #fff;
      border: 1px solid #ddd;
      border-radius: 6px;
      cursor: pointer;
      transition: background 0.3s, border-color 0.3s;
      font-family: 'Public Sans'
    }
    .btn-social-icon {
      width: 20px;
      height: 20px;
      margin-right: 0.75rem;
    }
     .btn-social:hover {
        background: #d6d4d4;
     }
 
.sign-up-btn {
    margin-left: 2px;
        text-decoration: auto;
        color: #3366FF
}
.forgot-btn {
    color: #3366FF;
        text-decoration: auto;
        font-size: 16px;
        min-width: 900px
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
  .no-account {
    color: #637381
    }


    a {
     text-decoration: none
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
