*** Settings ***
Resource       base.robot

Test Setup                Nova sessão
Test Teardown             Encerrar sessão

*** Test Cases ***
Verifica o valor ao informar o numero da linha

    Go to                             ${url}/tables
    Table Row Should Contain          id:actors                 1            10.000.000
  

Descobre a Linha pelo texto chave e valida os demais valores

    Go to                             ${url}/tables
    ${target}=                        Get WebElement                        xpath:.//tr[contains(., '@chadwickboseman')]   
    Log                               ${target.text}    
    Log To Console                    ${Target.text}                    
    Should Contain                    ${target.text}                        Pantera Negra   
    Should Contain                    ${target.text}                        $ 700.000           
    
