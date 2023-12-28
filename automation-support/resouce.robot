*** Settings ***
Library    SeleniumLibrary
*** Variables ***
${RESULT_OUTPUT_PATH}    ./result   

*** Keywords ***

Config open browser options
    ${CHROME_OPTIONS}=    Evaluate    selenium.webdriver.ChromeOptions()
    Call Method    ${CHROME_OPTIONS}    add_argument    --incognito    
    Call Method    ${CHROME_OPTIONS}    add_argument    --disable-notifications   
    Call Method    ${CHROME_OPTIONS}    add_argument    --aggressive-cache-discard        
    Call Method    ${CHROME_OPTIONS}    add_argument    --disable-application-cache  
    Call Method    ${CHROME_OPTIONS}    add_argument    --disable-dev-shm-usage
    Call Method    ${CHROME_OPTIONS}    add_argument    --no-sandbox
    Call Method    ${CHROME_OPTIONS}    add_argument    --disable-gpu
    Call Method    ${CHROME_OPTIONS}    add_argument    --mute-audio
    Call Method    ${CHROME_OPTIONS}    add_argument    --start-maximized
    [Return]    ${CHROME_OPTIONS}    
     
Capturar screenshot
    Set Screenshot Directory    ${RESULT_OUTPUT_PATH}/screenshots 
    Capture Page Screenshot    ${TEST_NAME}.png  