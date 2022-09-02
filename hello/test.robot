*** Settings ***
Library        app.py

*** Test Cases ***
Deve retornar mensagem de boas vindas
    ${result}=            Welcome        Henrique
    Should Be Equal       ${result}      Olá Henrique, bem vindo ao curso básico de Robort Framework!  
    