*** Settings ***
Resource                  base.robot

Test Setup                Nova sessão
Test Teardown             Encerrar sessão


*** Test Cases ***
Login com sucesso     

    Go To              ${url}/login
    Login With         stark                            jarvis! 

    Shoould See Logged user                             Tony Stark   



Senha invalida
    
    [tags]             login_error
    Go To              ${url}/login

    Login With         stark                           124teste! 

    Shoould Contain Login Alert                        Senha é invalida!

Usuario nào existe

    [tags]             login_user_error
    Go To              ${url}/login

    Login With         Henrique                        jarvis! 

    Shoould Contain Login Alert                        O usuário informado não está cadastrado!




***Keywords***
Login With
    [Arguments]        ${uname}                        ${pass}

    Input Text         css:input[name=username]        ${uname}
    Input Text         css:input[name=password]        ${pass}
    Click Element      class:btn-login  

Shoould Contain Login Alert
     [Arguments]       ${expect_message}
    
    ${message}=        Get WebElement                  id:flash
    Should Contain     ${message.text}                 ${expect_message}

Shoould See Logged user

     [Arguments]           ${full_name}
    
    Page Should Contain    Olá, ${full_name}. Você  acessou a área logada!




     




