*** Settings ***
Resource   ../automation-support/base.robot
Resource   ../elements/login_elements.robot
 
*** Keywords ***  
preencho o input de username com um USUARIO VALIDO "${username}"
    Input Text    ${INPUT_USERNAME_LOGIN}    ${username}
preencho o input de senha com uma SENHA VALIDA "${password}"
    Input Password    ${INPUT_PASSWORD_LOGIN}    ${password}
preencho o input de senha com uma SENHA INVALIDA "${password}"
    Should Not Be Equal    ${password}    "admin123"
    Input Password    ${INPUT_PASSWORD_LOGIN}   ${password}
preencho o input de username com um USUARIO INVALIDO "${usernameInvalid}"
    Input Password    ${INPUT_USERNAME_LOGIN}    ${usernameInvalid}
clicar no botão Login
    Click Button    ${BTN_LOGIN}
sou redirecionado com sucesso para a home do website da OrangeHRM
    Wait Until Element Is Visible    ${IMG_HOME_VALIDATE}
    Element Should Be Visible    ${HOME_ELEMENT_VALIDATE}
recebo uma mensagem "${messageErrorAuthenticateLogin}" indicando erro ao se autenticar
    Element Text Should Be    ${MESSAGE_ERROR_LOGIN}    ${messageErrorAuthenticateLogin}
que não preencho o input de usuario
    ${input_username_value}=    Get Value    ${INPUT_USERNAME_LOGIN}
    Should Be Empty    ${input_username_value}     
que não preecho o input de senha
    ${input_senha_value}=    Get Value    ${INPUT_PASSWORD_LOGIN}    
    Should Be Empty    ${input_senha_value}    
recebo a mensagem de "${message_input}" no input de usuario
    Element Should Be Visible   ${INPUT_USERNAME_REQUIRED_MESSAGE} 
    Element Text Should Be    ${INPUT_USERNAME_REQUIRED_MESSAGE}    ${message_input}
recebo a mensagem de "${message_input}" no input de senha
    Element Should Be Visible   ${INPUT_SENHA_REQUIRED_MESSAGE}  
    Element Text Should Be    ${INPUT_SENHA_REQUIRED_MESSAGE}     ${message_input}




    