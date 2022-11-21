*** Settings ***
Documentation    Components File

*** Variables ***
#LOGIN
${LOGO_VALIDATE}       //h1[contains(@class,'titulo')]
${BTN_ENTRAR}          //a[@tabindex='0'][contains(.,'Entrar')]
${CAMPO_EMAIL}         //input[@tabindex='1']
${CAMPO_SENHA}         //input[@placeholder='Senha']
${BTN_LOGIN}           //input[@tabindex='3']
${EMAIL_USER}          trebikelvin@gmail.com
${SENHA_USER}          @teste123
${SENHA_INVALID}       @invalid
${VALIDATION_LOGIN}    //a[@ga-event-action='Seja VIP']
${MSG_INVALID}         //span[contains(.,'Email ou senha incorretos. Por favor, tente novamente.')]
${EMAIL_SAVE}          //input[@type='checkbox']


#SEJA VIP
${SEJA_VIP}            //a[contains(@ga-event-action,'Seja VIP')]
${PLANO_CHOICE}        //span[@class='box-plan__price-value js-plan-value'][contains(.,'12,99')]
${PAG_FORMA}           //a[contains(@data-payment-method,'credit-card')]
${BOX_CARD}            //input[contains(@name,'cardNumber')]
${CARD_NUMBER}         5144 6209 3773 6750
${BOX_NAME}            //input[contains(@name,'cardName')]
${COMPLET_NAME}        Maria Jose Teste
${EXPIRATION_MONTH}    //option[@value='03'][contains(.,'03 (Março)')]
${EXPIRATION_YEAR}     //option[@value='2023'][contains(.,'23')]
${SECURIY_BOX}         //input[contains(@name,'cardCSEG')]
${SECURITY_CODE}       187
${ASSINATION}          //button[@type='submit'][contains(.,'Assinar')]
${PARCELADO}           //button[@type='button'][contains(.,'Parcelado')]
${AVISTA}              //button[@type='button'][contains(.,'À Vista')]
