*** Settings ***
Library    RequestsLibrary

*** Variables ***

${url_base}    https://fakerestapi.azurewebsites.net/
&{path_param}    todos=api/v1/Books    livro15=api/v1/Books/15
${arquivo_json}

*** Keywords ***

Preparando hambiente da conexao
    ${url_completa}    Catenate    ${url_base}${path_param.todos}
    ${arquivo_json}    GET    ${url_completa}
    Set Test Variable    ${arquivo_json}

Confere status code
    Should Be Equal As Strings    200    ${arquivo_json.status_code}

Confere o reason ok
    Should Be Equal As Strings    OK    ${arquivo_json.reason}

Confere se retorna 200 livros
    Should Be Equal As Strings    200    ${arquivo_json.json()}[199][id]
    ${dados_livro}    Set Variable    ${arquivo_json.json()}[199]
    Log To Console    \n\n${dados_livro}\n\n


Preparando hambiente da conexao livro 15
    ${url_completa}    Catenate    ${url_base}${path_param.livro15}
    ${arquivo_json}    GET    ${url_completa}
    Set Test Variable    ${arquivo_json}

Dados do livro 15
    Should Be Equal As Strings    15    ${arquivo_json.json()}[id]
    Should Be Equal As Strings    Book 15    ${arquivo_json.json()}[title]
    ${dados_livro}    Set Variable    ${arquivo_json.json()}
    Log To Console    \n\n${dados_livro}\n\n