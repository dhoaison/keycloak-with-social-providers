<#import "template.ftl" as layout>
<@layout.registrationLayout displayMessage=false; section>
  <#if section = "header">
    <#if messageHeader??>
      ${kcSanitize(msg("${messageHeader}"))?no_esc}
    <#else>
      ${message.summary}
    </#if>
  <#elseif section = "form">
    <div id="kc-info-message">
    
      <div style="
        max-width: 420px;
        margin: 46px auto 0;
        background: linear-gradient(135deg, #eaf4ff 0%, #f3e9fd 100%);
        border-radius: 18px;
        padding: 38px 26px 28px;
        box-shadow: 0 7px 28px rgba(100,140,230,0.13);
        text-align: center;
        display: flex;
        flex-direction: column;
        align-items: center;
      ">
        <!-- Success/Info Icon -->
     <div style="
  display: flex;
  align-items: center;
  justify-content: center;
  width: 62px;
  height: 62px;
  background: #000;
  border-radius: 50%;
  margin-bottom: 22px;
  box-shadow: 0 1px 10px rgba(0, 0, 0, 0.1);
">
  <svg width="34" height="34" viewBox="0 0 24 24">
    <circle fill="#000" cx="12" cy="12" r="12" />
    <path fill="#fff" d="M10.16 15.37l6.08-6.17-1.07-1.08-5 5.09-2.27-2.26-1.07 1.07z" />
  </svg>
</div>

        <p class="instruction" style="
          color: #29335e;
          font-size: 1.16rem;
          font-weight: 600;
          margin-bottom: 11px;
          text-align: center;
        ">
          ${message.summary}
          <#if requiredActions??>
            <#list requiredActions as reqActionItem>
              <b>${kcSanitize(msg("requiredAction.${reqActionItem}"))?no_esc}</b><#sep>, </#sep>
            </#list>
          </#if>
        </p>

        <#if !skipLink??>
          <#if pageRedirectUri?has_content>
            <a href="${pageRedirectUri}" style="
              display: inline-block;
              margin-top: 28px;
              background: #000;
              color: #fff;
              font-size: 1.08rem;
              padding: 12px 48px;
              border: none;
              border-radius: 32px;
              text-decoration: none;
              font-weight: 600;
              box-shadow: 0 2px 12px rgba(0, 0, 0, 0.15);
              transition: background 0.17s;
            ">${kcSanitize(msg("backToApplication"))?no_esc}</a>
          <#elseif actionUri?has_content>
            <a href="${actionUri}" style="
              display: inline-block;
              margin-top: 28px;
              background: #000;
              color: #fff;
              font-size: 1.08rem;
              padding: 12px 46px;
              border: none;
              border-radius: 32px;
              text-decoration: none;
              font-weight: 600;
              box-shadow: 0 2px 10px rgba(0, 0, 0, 0.15);
              transition: background 0.17s;
            ">${kcSanitize(msg("proceedWithAction"))?no_esc}</a>
          <#elseif client.baseUrl?has_content>
            <a href="https://keycloak-dev.gnosis-tms.com/" style="
              display: inline-block;
              margin-top: 28px;
              background: #000;
              color: #fff;
              font-size: 1.08rem;
              padding: 12px 44px;
              border: none;
              border-radius: 32px;
              text-decoration: none;
              font-weight: 600;
              box-shadow: 0 2px 12px rgba(0, 0, 0, 0.15);
              transition: background 0.17s;
            ">${kcSanitize(msg("backToApplication"))?no_esc}</a>
          </#if>
        </#if>
      </div>
    </div>
  </#if>
</@layout.registrationLayout>
