*** Settings ***
Documentation    Esssa suite testa o site da OrangeHRM
Resource         ../steps/login_step.robot
Force Tags        regressivos
Test Setup       Given que acesso a url do website da OrangeHRM
Test Teardown    Fechar o navegador

*** Test Cases ***
CT001 - Realizar o login com sucesso no website OrangeHRM
    [Documentation]    Esse teste verifica o fluxo feliz
    ...    da tela de login OrangeHRM
    [Tags]    CT001    test_success
    Given preencho o input de username com um USUARIO VALIDO "Admin"
    And preencho o input de senha com uma SENHA VALIDA "admin123"
    When clicar no botão Login
    Then sou redirecionado com sucesso para a home do website da OrangeHRM

CT002 - Realizar login com usuario incorreto
    [Tags]    CT002  test_failure
    Given preencho o input de username com um USUARIO INVALIDO "usuarioinvalido"
    And preencho o input de senha com uma SENHA VALIDA "admin123"
    When clicar no botão Login
    Then recebo uma mensagem "Invalid credentials" indicando erro ao se autenticar 
CT003 - Realizar login com senha incorreto
    [Tags]    CT003  test_failure
    Given preencho o input de username com um USUARIO VALIDO "Admin"
    And preencho o input de senha com uma SENHA INVALIDA "admin456"
    When clicar no botão Login
    Then recebo uma mensagem "Invalid credentials" indicando erro ao se autenticar 
CT004 - Realizar login sem preecher usuario e senha
    [Tags]    CT004  test_failure
    Given que não preencho o input de usuario
    And que não preecho o input de senha
    When clicar no botão Login
    Then recebo a mensagem de "Required" no input de usuario
    And recebo a mensagem de "Required" no input de senha 