*** Settings ***
Library    RequestsLibrary
Library    OperatingSystem
Library    Collections
Library    Screenshot

*** Variables ***
${url_base}       https://gorest.co.in/
${path_params}    public/v2/users
${end_point}
${response}

*** Keywords ***
Dado que tenho os dados para efetuar o servico list_all_users
    ${end_point}    Catenate    ${url_base}${path_params}
    Set Test Variable    ${end_point}

Quando executo servico list_all_users
    ${response}    GET    ${end_point}
    Log To Console    ${response.text}
    Set Test Variable    ${response}

Entao valido o status code da request ${status_code}
    Should Be Equal As Strings    ${status_code}    ${response.status_code}
    Log To Console    \n\n\nO status code é:${response.status_code}\n\n

