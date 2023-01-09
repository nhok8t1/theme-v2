<#import "template.ftl" as layout>
<@layout.registrationLayout displayInfo=true displayMessage=!messagesPerField.existsError('username'); section>
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Open+Sans:ital,wght@0,300;0,400;0,500;0,600;0,700;0,800;1,300;1,400;1,500;1,600;1,700;1,800&display=swap');
        h1#page-title {
            font-family: 'Open Sans', sans-serif;
            font-style: normal;
            font-weight: 600;
            font-size: 32px;
            text-align: center;
            color: #14142B;
            margin-bottom: 0;
        }
        .card-pf {
            /*border: none;
            box-shadow: 0 0.5px 60px rgba(108, 94, 94, 0.1);
            height: 120vh;
            padding: 0 150px !important;

            background-image: url(${url.resourcesPath}/img/background.png);
            background-size: cover;
            background-position: center bottom;
            background-repeat: no-repeat;

            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;*/
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: flex-start;
            border-radius: 12px;
            background: #FFFFFF;
            border: none;
            box-shadow: 0 0.5px 60px rgba(108, 94, 94, 0.1);
            width: 560px;
            padding: 32px!important;
            height: 100%;
            max-height: calc(100vh - 96px);
            overflow: auto;
        }
    </style>
    <#if section = "header">
        ${msg("emailForgotTitle")}
    <#elseif section = "form">
        <p id="page-subtitle-internal">${msg("emailForgotSubtitle")}</p>
        <form id="kc-reset-password-form" class="full-screen" action="${url.loginAction}" method="post">
            <div class="form-group">
                <label for="username"
                       class="form-label"><#if !realm.loginWithEmailAllowed>${msg("username")}<#elseif !realm.registrationEmailAsUsername>${msg("usernameOrEmail")}<#else>${msg("email")}</#if></label>
                <input type="text" id="username" name="username" class="form-input"
                       placeholder="${msg("emailPlaceholder")}"
                       autofocus value="${(auth.attemptedUsername!'')}"
                       aria-invalid="<#if messagesPerField.existsError('username')>true</#if>"/>
                <#if messagesPerField.existsError('username')>
                    <span id="input-error-username" class="form-input-wrong" aria-live="polite">
                                ${kcSanitize(messagesPerField.get('username'))?no_esc}
                    </span>
                </#if>
            </div>
            <div class="form-group" style="margin-top: 32px;">
                <input class="auth-button primary-button" type="submit" value="${msg("doSubmit")}"/>
            </div>
        </form>
    </#if>
</@layout.registrationLayout>
