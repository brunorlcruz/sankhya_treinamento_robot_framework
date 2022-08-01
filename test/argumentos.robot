*** Settings ***
Resource    ../resource/argumentos/resource_arg.resource

*** Test Cases ***
Meu teste de soma
    ${resultado}    Somar dois numeros    1    2
    Log    ${resultado}


Meu teste de soma com argumentos embutidos
    ${resultado}    Somar dois numeros embutidos 1 e 2
    Log    ${resultado}

Meu teste de formar email
    [Documentation]    Testando fazer um email passando argumentos
    ${resultado}    Formar e-mail    bruno    cruz    25
    Log    ${resultado}

    ${resultado}    Formar e-mail com argumentos embutidos bruno e rodrigues e 25
    Log    ${resultado}