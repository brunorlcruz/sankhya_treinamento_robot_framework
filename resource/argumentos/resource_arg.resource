*** Variables ***

${provedor}    @robot.com

*** Keywords ***
Somar dois numeros
    [Arguments]    ${num_a}    ${num_b}
    ${soma}    Evaluate    ${num_a}+${num_b}
    RETURN    ${soma}

Somar dois numeros embutidos ${num_a} e ${num_b}
    ${soma}    Evaluate    ${num_a}+${num_b}
    RETURN    ${soma}

Formar e-mail
    [Arguments]    ${nome}    ${sobrenome}    ${idade}
    ${email}    Catenate    ${nome}${sobrenome}${idade}${provedor}
    RETURN    ${email}

Formar e-mail com argumentos embutidos ${nome} e ${sobrenome} e ${idade}
    ${email}    Catenate    ${nome}${sobrenome}${idade}${provedor}
    RETURN    ${email}