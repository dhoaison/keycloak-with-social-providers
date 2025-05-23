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
        max-width:420px;
        margin:46px auto 0 auto;
        background: linear-gradient(135deg, #eaf4ff 0%, #f3e9fd 100%);
        border-radius: 18px;
        padding:38px 26px 28px 26px;
        box-shadow: 0 7px 28px rgba(100,140,230,0.13);
        text-align: center;
        display: flex;
        flex-direction: column;
        align-items: center;
      ">
        <!-- Success/Info Icon SVG -->
        <div style="
          display: flex;
          align-items: center;
          justify-content: center;
          width: 62px;
          height: 62px;
          background: linear-gradient(135deg, #6dcb89 24%, #4f8ffd 90%);
          border-radius: 50%;
          margin-bottom: 22px;
          box-shadow: 0 1px 10px 0 rgba(71,218,151,0.10);
        ">
          <svg width="34" height="34" viewBox="0 0 24 24"><circle fill="#fff" cx="12" cy="12" r="12"/><path fill="#35bb6e" d="M10.16 15.37l6.08-6.17-1.07-1.08-5 5.09-2.27-2.26-1.07 1.07z"></path></svg>
        </div>
        <p class="instruction" style="
            color:#29335e;font-size:1.16rem;font-weight:600;margin-bottom:11px;text-align:center;">
          ${message.summary}
          <#if requiredActions??>
            <#list requiredActions>: <b>
              <#items as reqActionItem>
                ${kcSanitize(msg("requiredAction.${reqActionItem}"))?no_esc}
                <#sep>, </#items>
            </b></#list>
          <#else></#if>
        </p>
        <#if !skipLink??>
          <#if pageRedirectUri?has_content>
            <a href="${pageRedirectUri}" style="
              display:inline-block;
              margin-top:28px;
              background: linear-gradient(90deg,#4f8ffd 0%,#6dcb89 100%);
              color:#fff;font-size:1.08rem;padding:12px 48px;
              border:none;border-radius:32px;text-decoration:none;
              font-weight:600;
              box-shadow:0 2px 12px rgba(80,170,255,0.13);
              transition:background 0.17s;">${kcSanitize(msg("backToApplication"))?no_esc}</a>
          <#elseif actionUri?has_content>
            <a href="${actionUri}" style="
              display:inline-block;
              margin-top:28px;
              background: linear-gradient(90deg,#7f5eff 0%,#ea91f7 100%);
              color:#fff;font-size:1.08rem;padding:12px 46px;
              border:none;border-radius:32px;text-decoration:none;
              font-weight:600;
              box-shadow:0 2px 10px rgba(125,92,254,0.13);
              transition:background 0.17s;">${kcSanitize(msg("proceedWithAction"))?no_esc}</a>
          <#elseif (client.baseUrl)?has_content>
            <a href="${client.baseUrl}" style="
              display:inline-block;
              margin-top:28px;
              background: linear-gradient(90deg,#4f8ffd 0%,#20deff 100%);
              color:#fff;font-size:1.08rem;padding:12px 44px;
              border:none;border-radius:32px;text-decoration:none;
              font-weight:600;
              box-shadow:0 2px 12px rgba(56,128,255,0.10);
              transition:background 0.17s;">${kcSanitize(msg("backToApplication"))?no_esc}</a>
          </#if>
        </#if>
      </div>
    </div>
  </#if>
</@layout.registrationLayout>
