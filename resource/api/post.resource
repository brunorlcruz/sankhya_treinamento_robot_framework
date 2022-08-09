*** Settings ***
Library    RequestsLibrary
Library    OperatingSystem
Library    Collections

*** Variables ***

${url_base}    https://fakerestapi.azurewebsites.net/
${path_params}    api/v1/Books
${url_completa}
${payload}    ${EMPTY}
${response}
&{params}

*** Keywords ***
Montando o ambiente
    ${url_completa}    Catenate    ${url_base}${path_params}
    &{params}    Create Dictionary    title=Fuga de Furnace    description=Livro do teste bruno    pageCount=500    excerpt=string    publishDate=2022-08-06T15:18:18.817Z
    Set Test Variable    &{params}
    Set Test Variable    ${url_completa}
    Set Test Variable    ${payload}

Fazendo inclusao do livro
    ${response}    POST    url=${url_completa}  data=&{params}
    Set Test Variable    ${response}
