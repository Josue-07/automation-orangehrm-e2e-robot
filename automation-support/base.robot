*** Settings ***
Library  SeleniumLibrary
Resource    ../automation-support/resouce.robot
*** Variables ***
${baseUrl}    https://opensource-demo.orangehrmlive.com/web/index.php/auth/login 
${BROWSER}    Chrome   
${TIMEOUT_BROWSER}    10s
${HEADLESS} 


*** Keywords ***

que acesso a url do website da OrangeHRM
    ${options}=    Config open browser options
    IF    '${HEADLESS}' == 'True'
        Open Browser  ${baseUrl}     headlesschrome    ${BROWSER}    options=${options}          #options=add_experimental_option("detach", True)
        Set Selenium Implicit Wait    ${TIMEOUT_BROWSER}
        
    ELSE    
        Open Browser  ${baseUrl}   ${BROWSER}    options=${options}           #options=add_experimental_option("detach", True)
        Set Selenium Implicit Wait    ${TIMEOUT_BROWSER} 
    END   

Fechar o navegador
    Capturar screenshot  
    Close Browser 
    # Close Browser ja implementado nas versoes mais novas do robotframework  