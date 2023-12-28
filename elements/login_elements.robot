*** Variables ***
${INPUT_USERNAME_LOGIN}    (//input[@placeholder='Username'])[1]
${INPUT_PASSWORD_LOGIN}    //input[@name='password']
${BTN_LOGIN}              //button[@type='submit'][contains(.,'Login')]
${MESSAGE_ERROR_LOGIN}    //p[contains(.,'Invalid credentials')]
${IMG_HOME_VALIDATE}      //img[@alt='client brand banner']
${HOME_ELEMENT_VALIDATE}  //h6[contains(.,'Dashboard')]
${INPUT_USERNAME_REQUIRED_MESSAGE}  (//span[contains(.,'Required')])[1]
${INPUT_SENHA_REQUIRED_MESSAGE}  (//span[contains(.,'Required')])[2]