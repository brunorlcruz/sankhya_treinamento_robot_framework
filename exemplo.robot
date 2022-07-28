***Settings
Library     BuiltIn


*** Variables ***
${log}
${p1}  hello
${p2}  word
&{pessoa}   nome=Bruno      sobrenome=Cruz      idade=25
@{Lista_comidas}    pizza   pastel      hamburguer
&{exercicio1}   nome=Bruno      nome_do_meio=Rodrigues      sobrenome=Cruz      idade=25        cpf=11111111111     email=brunorlcruz@hotmail.com
@{exercicio2}   abacaxi     maracuja    morango     banana      abacate

**** Test Cases ***
Primeiro teste
    [Tags]   exemplo
    ${log}  Catenate    \n ${p1}   ${p2}   teste
    Log To Console  ${log}

Segundo teste
    [Tags]   exemplo
    ${log}  Catenate    \n Bruno   Cruz   teste
    Log To Console  ${log}

Terceiro teste
    [Tags]  dicionario
    Log To Console    \n\n\n Ola ${pessoa.nome} ${pessoa.sobrenome} você esta no auge da idade ${pessoa.idade}!!! \n\n

Quarto teste
    [Tags]  lista
    Log To Console    \n\n\n Minha comida preferida é ${Lista_comidas}[2] !!! \n\n\n

Quinto teste
    [Tags]  exercicio1
    Log To Console    \n 1ª informação ${exercicio1.nome}   \n
    Log To Console    \n 2ª informação ${exercicio1.nome_do_meio}   \n
    Log To Console    \n 3ª informação ${exercicio1.sobrenome}   \n
    Log To Console    \n 4ª informação ${exercicio1.idade}   \n
    Log To Console    \n 5ª informação ${exercicio1.cpf}   \n
    Log To Console    \n 6ª informação ${exercicio1.email}   \n
    Log To Console    \n Completo ${exercicio1}   \n

Sexto teste
    [Tags]  exercicio2
    Log To Console    \n 1ª Fruta ${exercicio2}[0]   \n
    Log To Console    \n 2ª Fruta ${exercicio2}[1]   \n
    Log To Console    \n 3ª Fruta ${exercicio2}[2]   \n
    Log To Console    \n 4ª Fruta ${exercicio2}[3]   \n
    Log To Console    \n 5ª Fruta ${exercicio2}[4]   \n
    Log To Console    \n Todas as Frutas ${exercicio2}   \n