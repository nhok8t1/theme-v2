<#import "template.ftl" as layout>
<@layout.registrationLayout displayMessage=!messagesPerField.existsError('password','password-confirm'); section>
    <#if section = "header">
        ${msg("updatePasswordTitle")}
    <#elseif section = "form">
        <style>
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

            @media only screen and (max-width: 900px) {
                .card-pf  {
                    padding: 0 100px!important;
                }
            }

            .bottom-banner {
                display: none;
            }
        </style>
        <form id="kc-passwd-update-form" class="${properties.kcFormClass!}" action="${url.loginAction}" method="post">
            <div class="form-group">
                <label for="password-new" class="form-label">${msg("passwordNew")}<span
                            class="red-asterisk"> *</span></label>
                <div style="display: flex; align-items: center;">
                    <input tabindex="1" id="password-new" class="form-input" name="password-new"
                           type="password"
                           autocomplete="new-password"
                           placeholder="${msg("passwordPlaceholder")}"
                           aria-invalid="<#if messagesPerField.existsError('password','password-confirm')>true</#if>"
                    />
                    <i id="show-password" class="show-password icon-eye" aria-hidden="true"></i>
                </div>

                <script>
                    const passwordNew = document.getElementById('password-new');
                    const showPassword = document.getElementById('show-password');
                    showPassword.onclick = () => {
                        if (passwordNew.getAttribute("type") === "password") {
                            passwordNew.setAttribute("type", "text");
                        } else {
                            passwordNew.setAttribute("type", "password");
                        }
                        showPassword.classList.toggle("icon-eye");
                        showPassword.classList.toggle("icon-eye-invisible");
                    }
                </script>

                <#if messagesPerField.existsError('password')>
                    <span id="input-error-password" class="form-input-wrong" aria-live="polite">
                         ${kcSanitize(messagesPerField.get('password'))?no_esc}
                    </span>
                </#if>

            </div>
            <div class="form-group">
                <label for="password-confirm" class="form-label">${msg("passwordConfirm")}<span
                            class="red-asterisk"> *</span></label>
                <div style="display: flex; align-items: center;">
                    <input tabindex="2" id="password-confirm" class="form-input" name="password-confirm"
                           type="password" autocomplete="new-password"
                           placeholder="${msg("passwordConfirmPlaceholder")}"
                           aria-invalid="<#if messagesPerField.existsError('password-confirm')>true</#if>"
                    />
                    <i id="show-password-confirm" class="show-password icon-eye" aria-hidden="true"></i>
                </div>

                <script>
                    const passwordConfirm = document.getElementById('password-confirm');
                    const showPasswordConfirm = document.getElementById('show-password-confirm');
                    showPasswordConfirm.onclick = () => {
                        if (passwordConfirm.getAttribute("type") === "password") {
                            passwordConfirm.setAttribute("type", "text");
                        } else {
                            passwordConfirm.setAttribute("type", "password");
                        }
                        showPasswordConfirm.classList.toggle("icon-eye");
                        showPasswordConfirm.classList.toggle("icon-eye-invisible");
                    }
                </script>

                <#if messagesPerField.existsError('password-confirm')>
                    <span id="input-error-password-confirm" class="form-input-wrong" aria-live="polite">
                            ${kcSanitize(messagesPerField.get('password-confirm'))?no_esc}
                        </span>
                </#if>
            </div>
            <div class="form-group" style="margin-top: 40px">
                <input class="auth-button primary-button" type="submit" value="${msg("doUpdatePassword")}"/>
            </div>
        </form>
    </#if>
</@layout.registrationLayout>