*** Settings ***

Resource    ../pages/HomeJogatina.pages.robot


Test Setup       Start Test
Test Teardown    Finish Test    

*** Test Cases ***

Cenário 1 - Fazer Login Válido
    Given que estou no site jogatina
    When clique em entrar
    And digite o email
    And lembrar email
    And digite a senha 
    And clique no botao entrar login
    Then deve ser redirecionado a page welcome do jogatina

Cénario 2 - Fazer Login Inválido
    Given que estou no site jogatina
    When clique em entrar
    And digite o email
    And digite a senha inválida
    And clique no botao entrar login
    Then deverá ser exibido a mensagem "Email ou senha incorretos. Por favor, tente novamente."

Cénario 3 - Realizar plano seja VIP parcelado
    Given que esteja logado com login válido
    When clique em seja vip
    And selecione o mais escolhido
    And a forma de pagamento seja cartão
    And preencha os dados
    And selecione parcelado
    Then assine o plano

Cénario 4 - Realizar plano seja VIP à vista
    Given que esteja logado com login válido
    When clique em seja vip
    And selecione o mais escolhido
    And a forma de pagamento seja cartão
    And preencha os dados
    And selecione a vista
    Then assine o plano
