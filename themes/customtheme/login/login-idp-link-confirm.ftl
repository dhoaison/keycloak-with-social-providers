
<!-- Load Google Fonts & Material Icons -->
<link href="https://fonts.googleapis.com/css?family=Roboto:300,400,500" rel="stylesheet"/>
<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet"/>

<style>
  /* Full-screen light grey background */
  .md-container {
    display: flex;
    align-items: center;
    justify-content: center;
    min-height: 100vh;
    background: #f5f5f5;
    font-family: 'Roboto', sans-serif;
  }

  /* Card panel */
  .md-card {
    background: #fff;
    border-radius: 8px;
    box-shadow: 0 2px 4px rgba(0,0,0,0.1);
    padding: 24px;
    max-width: 360px;
    width: 100%;
    text-align: center;
  }

  .md-title {
    font-size: 20px;
    font-weight: 500;
    color: rgba(0,0,0,0.87);
    margin-bottom: 16px;
  }

  .md-text {
    font-size: 14px;
    color: rgba(0,0,0,0.6);
    margin-bottom: 24px;
  }

  .md-btn {
    display: inline-flex;
    align-items: center;
    justify-content: center;
    min-width: 88px;
    padding: 0 16px;
    height: 36px;
    margin: 0 4px;
    font-size: 14px;
    font-weight: 500;
    border: none;
    border-radius: 4px;
    cursor: pointer;
    transition: background 0.2s ease;
    text-decoration: none;
  }

  .md-btn-primary {
    background: #1a73e8;
    color: #fff;
  }
  .md-btn-primary:hover {
    background: #1669c1;
  }

  .md-btn-secondary {
    background: transparent;
    color: #1a73e8;
  }
  .md-btn-secondary:hover {
    background: rgba(26,115,232,0.08);
  }

  .material-icons {
    font-size: 18px;
    margin-right: 8px;
  }
</style>

<div class="md-container">
  <div class="md-card">
    <div class="md-title">
      ${msg("identityProviderLinkTitle")?default(msg("confirm"))}
    </div>

    <div class="md-text">
      ${msg("identityProviderLinkConfirmText", idpAlias)}
    </div>

    <form id="kc-idp-link-confirm-form"
          action="${url.loginAction}"
          method="post">
      
      <button type="submit"
              name="submit"
              value="yes"
              class="md-btn md-btn-primary">
        <span class="material-icons">check</span>
        ${msg("confirmLink")?default(msg("confirm"))}
      </button>

      <button type="submit"
              name="submit"
              value="no"
              class="md-btn md-btn-secondary">
        <span class="material-icons">close</span>
        ${msg("cancelLink")?default(msg("doNotLink"))}
      </button>

      <!-- Hidden fields -->
    </form>
  </div>
</div>
