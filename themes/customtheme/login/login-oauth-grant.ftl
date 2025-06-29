<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>${msg("oauthGrantTitle")!"Grant Access"}</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <style>
        body {
            font-family: Arial, sans-serif;
            background: #f7faff;
            margin: 0;
            padding: 0;
        }
        .kc-form-container {
            max-width: 400px;
            margin: 2em auto;
            background: #fff;
            border-radius: 8px;
            box-shadow: 0 2px 10px rgba(0,0,0,0.07);
            padding: 1.5em;
        }
        h1 {
            margin-top: 0;
            font-size: 1.5em;
            color: #333;
        }
        .kc-form-group {
            margin-bottom: 1em;
        }
        .kc-form-info {
            color: #333;
            margin-bottom: 1em;
            font-size: 1em;
        }
        .kc-scope-list {
            margin-bottom: 1em;
        }
        .kc-scope-item {
            margin-bottom: 0.5em;
            font-size: 0.95em;
        }
        .kc-help {
            font-size: 0.9em;
            color: #888;
            margin-left: 1.5em;
        }
        .kc-btns {
            display: flex;
            gap: 0.8em;
            justify-content: flex-end;
        }
        .kc-btn-primary, .kc-btn-default {
            border: none;
            border-radius: 20px;
            padding: 0.5em 1.5em;
            font-weight: 600;
            cursor: pointer;
            font-size: 0.95em;
        }
        .kc-btn-primary {
            background: #3267e3;
            color: #fff;
        }
        .kc-btn-default {
            background: #eeeeee;
            color: #4062a5;
        }
        .kc-btn-primary:hover {
            background: #2549a3;
        }
        .kc-btn-default:hover {
            background: #d1d7e5;
        }
        @media (max-width: 480px) {
            .kc-form-container {
                margin: 1em;
                padding: 1em;
            }
            .kc-btns {
                flex-direction: column;
                gap: 0.5em;
            }
            .kc-btn-primary, .kc-btn-default {
                width: 100%;
                text-align: center;
            }
        }
    </style>
</head>
<body>
<div class="kc-form-container">
    <h1>${msg("oauthGrantTitle")!"Grant Access"}</h1>
    <form id="kc-oauth-grant-form" action="${url.oauthAction!""}" method="post">
        <div class="kc-form-group">
            <p class="kc-form-info">
                <#if client?? && client.name?has_content>
                    ${msg("oauthGrantRequest", kcSanitie(advancedMsg(client.name)))?no_esc}
                <#elseif client?? && client.clientId?has_content>
                    ${msg("oauthGrantRequest", kcSanitize(client.clientId))?no_esc}
                <#else>
                    ${msg("oauthGrantRequest", msg("defaultApplication")!"Application")}
                </#if>
            </p>

            <#if oauth.clientScopesRequested?? && oauth.clientScopesRequested?size gt 0>
                <div class="kc-scope-list">
                    <p><strong>${msg("scopesRequested")!"Requested Permissions"}:</strong></p>
                    <#list oauth.clientScopesRequested as clientScope>
                        <div class="kc-scope-item">
                            <span>
                                <#if clientScope.consentScreenText?has_content>
                                    ${kcSanitize(advancedMsg(clientScope.consentScreenText))?no_esc}
                                <#elseif clientScope.name?has_content>
                                    ${kcSanitize(clientScope.name)?no_esc}
                                <#else>
                                    ${msg("unnamedScope")!"Unnamed scope"}
                                </#if>
                                <#if clientScope.dynamicScopeParameter?has_content>
                                    : <b>${kcSanitize(clientScope.dynamicScopeParameter)?no_esc}</b>
                                </#if>
                            </span>
                        </div>
                    </#list>
                </div>
            <#else>
                <p class="kc-help">${msg("noScopesRequested")!"No permissions requested."}</p>
            </#if>

            <input type="hidden" name="code" value="${oauth.code}"/>
            <div class="kc-btns">
                <button class="kc-btn-primary" id="kc-login" name="accept" type="submit">${msg("doYes")!"Yes"}</button>
                <button class="kc-btn-default" id="kc-cancel" name="cancel" value="true" type="submit">${msg("doNo")!"No"}</button>
            </div>
        </div>
    </form>
</div>
</body>
</html>