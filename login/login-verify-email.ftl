<#import "template.ftl" as layout>
<@layout.registrationLayout displayInfo=true; section>
    <#if section = "header">
        ${msg("emailVerifyTitle")}
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
                width: 600px;
                padding: 50px!important;
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
        <p class="instruction">${msg("emailVerifyInstruction1",user.email)}</p> 
    <#elseif section = "info">
        <p class="instruction">
            ${msg("emailVerifyInstruction2")}
            <br/>
            <a href="${url.loginAction}">${msg("doClickHere")}</a> ${msg("emailVerifyInstruction3")}
        </p>
    </#if>
</@layout.registrationLayout>
