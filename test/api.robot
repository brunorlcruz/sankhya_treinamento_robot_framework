*** Settings ***
Library    RequestsLibrary

*** Variables ***

${url_base}       https://fakerestapi.azurewebsites.net
${path_params}    /api/v1/Authors
${response}

*** Keywords ***

Requisitar todos os autores
    ${end_point}    Catenate    ${url_base}${path_params}
    ${response}=    GET    ${end_point}
    Set Test Variable    ${response}

Conferir o status code ${code}
    Should Be Equal As Integers    ${response.status_code}    ${code}

Conferir o reason ${status}
    Should Be Equal   ${response.reason}    ${status}

Conferir se retorna uma lista com ${itens} autores
    ${dados_livro}    Set Variable    ${response.json()}[300][firstName]
    Log    ${dados_livro}

*** Test Cases ***
Consultar lista de autores GET
    Requisitar todos os autores
    Conferir o status code 200
    Conferir o reason OK
    Conferir se retorna uma lista com 590 autores