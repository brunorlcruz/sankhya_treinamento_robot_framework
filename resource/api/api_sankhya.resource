*** Settings ***
Library    RequestsLibrary
Library    OperatingSystem
Library    Collections

*** Variables ***
${payload}    ${EMPTY}
&{params}
${url_base}    https://atacadistriborclhd411.qa.sankhya.com.br/
${path_params}    mge/service.sbr?
${end_point}
${response}

*** Keywords ***
Dado que tem as configuracoes da requisicao
    ${payload_string}    Get File    ./resource/api/login.json
    &{params}    Create Dictionary    serviceName=MobileLoginSP.login
    ...                               outputType=json
    ${end_point}    Catenate    ${url_base}${path_params}
    Set Test Variable    ${payload}     ${payload_string}
    Set Test Variable    &{params}
    Set Test Variable    ${end_point}

Quando envio esta requisicao de Login
    ${response}    POST    url=${end_point}    params=&{params}    data=${payload}
    Set Test Variable    ${response}
    
Entao valido o atributo ${status}
    ${response_status}    Set Variable    ${response.json()}[status]
    Should Be Equal As Integers    ${status}    ${response_status}