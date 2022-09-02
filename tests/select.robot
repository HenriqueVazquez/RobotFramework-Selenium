*** Settings ***
Resource       base.robot

Test Setup                Nova sessão
Test Teardown             Encerrar sessão

*** Test Cases ***
Selecionar por texto e valida pelo valor

      Go To                             ${url}/dropdown
      Select From List By Label         class:avenger-list             Natasha Romanoff
      ${selected}=                      Get Selected List Value        class:avenger-list
      Should Be Equal                   ${selected}                    4

Selecionar pelo valor e validar pelo text

      Go To                             ${url}/dropdown
      Select From List By Value         id=dropdown                    6  
      ${selected}=                      Get Selected List Label        id=dropdown    
      SHould Be Equal                   ${selected}                    Loki   


