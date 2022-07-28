*** Settings ***
Resource    ../resource/variaveis/resource.resource

*** Test Cases ***
Exercicio 1 - Imprimir dicionario com dados pessoais
    [Tags]  dicionarios
    [Documentation]     Teste para imprimir um dicionario com dados pessoais
    Tenho um dicionario com dados pessoais e imprimo eles.

Exercicio 2 - Imprimir minha lista de Frutas
    [Tags]  lista
    [Documentation]     Teste para imprimir uma lista de frutas
    Tenho uma Lista de Frutas e imprimo ela.