<#import "template.ftl" as layout>
<@layout.registrationLayout; section>
    <#if section = "header">
        <img src="${url.resourcesPath}/img/my-logo.png" alt="My Brand"/>
        ${msg("pageExpiredTitle")}
    <#elseif section = "form">
        <p id="instruction1" class="instruction">
            Sorry, your session has expired. Please
            <a id="loginRestartLink" href="${url.loginRestartFlowUrl}">start again</a> or
            <a id="loginContinueLink" href="${url.loginAction}">try continuing</a>.
        </p>
    </#if>
</@layout.registrationLayout>