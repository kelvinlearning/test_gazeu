*** Settings ***

Resource    ../components/components.robot 
Resource    ../pages/commons/hooks.pages.commons.robot

*** Keywords ***
#login valido
que estou no site jogatina
    Element Should Be Visible    ${LOGO_VALIDATE}

clique em entrar
    Click Element    ${BTN_ENTRAR}

digite o email
    Wait Until Element Is Visible    ${CAMPO_EMAIL}
    Input Text                       ${CAMPO_EMAIL}    ${EMAIL_USER}

lembrar email
    Click Element    ${EMAIL_SAVE}

digite a senha
    Click Element     ${CAMPO_SENHA}
    Input Password    ${CAMPO_SENHA}    ${SENHA_USER}

clique no botao entrar login
    Click Element    ${BTN_LOGIN}

deve ser redirecionado a page welcome do jogatina
    Element Should Be Visible    ${VALIDATION_LOGIN}
#login inválido
digite a senha inválida
    Click Element     ${CAMPO_SENHA}
    Input Password    ${CAMPO_SENHA}    ${SENHA_INVALID}

deverá ser exibido a mensagem "Email ou senha incorretos. Por favor, tente novamente."
    Element Should Be Visible    ${MSG_INVALID}

#seja vip

que esteja logado com login válido
    Element Should Be Visible        ${LOGO_VALIDATE}
    Click Element                    ${BTN_ENTRAR}
    Wait Until Element Is Visible    ${CAMPO_EMAIL}
    Input Text                       ${CAMPO_EMAIL}         ${EMAIL_USER}
    Click Element                    ${CAMPO_SENHA}
    Input Password                   ${CAMPO_SENHA}         ${SENHA_USER}
    Click Element                    ${BTN_LOGIN}
    Element Should Be Visible        ${VALIDATION_LOGIN}
clique em seja vip
    Click Element    ${SEJA_VIP}

selecione o mais escolhido
    Click Element    ${PLANO_CHOICE}

a forma de pagamento seja cartão
    Click Element    ${PAG_FORMA}

selecione parcelado
    Click Element    ${PARCELADO}

selecione a vista
    Click Element    ${AVISTA}

preencha os dados
    Input Text       ${BOX_CARD}            ${CARD_NUMBER}
    Input Text       ${BOX_NAME}            ${COMPLET_NAME}
    Click Element    ${EXPIRATION_YEAR}
    Click Element    ${EXPIRATION_MONTH}
    Input Text       ${SECURIY_BOX}         ${SECURITY_CODE}

assine o plano
    Click Element    ${ASSINATION}
