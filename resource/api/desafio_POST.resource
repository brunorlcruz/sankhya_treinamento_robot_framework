*** Settings ***
Library    RequestsLibrary
Library    OperatingSystem
Library    Collections

*** Variables ***

${payload}    ${EMPTY}
${url_base}    https://gorest.co.in/
${path_params}    public/v2/users
${end_point}
${response}
&{headers}    Content-Type=application/json    Authorization=Bearer 9b9603e13d6901e4677300e20c0256e207d1d1d722bce106ec47754fb77293ea


*** Keywords ***
Dado que tenho os dados para efetuar o servico creat_user
    ${end_point}    Catenate    ${url_base}${path_params}
    Create Session    minhasessao    url=${end_point}    headers=${headers}
    ${payload}    Get File    ./resource/api/usuario.json
    Set Test Variable    ${payload}
    Set Test Variable    ${end_point}

Quando executo servico creat_user
    ${response}    POST On Session    minhasessao    url=${end_point}    data=${payload}
    Set Test Variable    ${response}

Valido se o usuario foi criado utilizando a request de get_user
    ${id}    Set Variable    ${response.json()}[id]
    ${response}    GET    ${url_base}${path_params}/${id}
    Log To Console    \n\n${response.text}\n\n

Deletar Usuario Criado
    Log To Console    Deletar Usuario Criado