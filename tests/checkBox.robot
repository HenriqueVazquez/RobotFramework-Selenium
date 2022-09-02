*** Settings ***
Resource                  base.robot


Test Setup                Nova sessão
Test Teardown             Encerrar sessão

*** Variables ***
${check_thor}        id:thor
${check_iron_man}    css:input[value='iron-man']
${check_panther}     xpath://*[@id='checkboxes']/input[7]


*** Test Cases ***
Marcando opção com ID

    Go To                           ${url}/checkboxes
    Select Checkbox                 ${check_thor}
    Checkbox Should Be Selected     ${check_thor}     
   

Marcando opção com CSS Selector

    [Tags]                          ironman 
    Go To                           ${url}/checkboxes
    Select Checkbox                 ${check_iron_man}
    Checkbox Should Be Selected     ${check_iron_man}        


Marcando opção com Xpath
      
    Go To                           ${url}/checkboxes
    Select Checkbox                 ${check_panther} 
    Checkbox Should Be Selected     ${check_panther} \






    
    



