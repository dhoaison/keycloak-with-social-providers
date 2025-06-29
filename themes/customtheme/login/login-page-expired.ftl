<#import "template.ftl" as layout>
<@layout.registrationLayout>
  <h1>${msg("confirmLinkIdpTitle")}</h1>
  <p>${msg("federatedIdentityConfirmLinkMessage", idpAlias, userEmail)}</p>
  <form action="${url.loginAction}" method="post">
    <button type="submit" name="submitAction" value="confirm">${msg("doConfirm")}</button>
    <button type="submit" name="submitAction" value="cancel">${msg("doCancel")}</button>
  </form>
</@layout.registrationLayout>