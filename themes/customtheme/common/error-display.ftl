<#-- themes/<your-theme>/common/error-display.ftl -->
<#-- A reusable macro to render styled error messages -->

<#-- Guard so it only gets defined once -->
<#if !sharedErrorMacroDefined??>
  <#macro renderError message backUrl>
    <div style="
        border:1px solid #e74c3c;
        background:#fdecea;
        color:#c0392b;
        padding:1em;
        margin:1em 0;
        border-radius:4px;
        font-family: Arial, sans-serif;">
      <strong>Error:</strong> ${message?html}
      <#if backUrl?has_content>
        <div style="margin-top:.5em;">
          <a href="${backUrl}"
             style="color:#c0392b; text-decoration:underline;">
            ← Go back
          </a>
        </div>
      </#if>
    </div>
  </#macro>
  <#assign sharedErrorMacroDefined = true />
</#if>