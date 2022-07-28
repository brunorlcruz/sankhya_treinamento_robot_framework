*** Settings ***
Documentation   Criando arquivo '.resource' do exercicio 'variaveis'
Library    Collections

*** Variables ***
&{exercicio1}   nome=Bruno      nome_do_meio=Rodrigues      sobrenome=Cruz      idade=25        cpf=11111111111     email=brunorlcruz@hotmail.com
@{exercicio2}   abacaxi     maracuja    morango     banana      abacate

*** Keywords ***
Tenho um dicionario com dados pessoais e imprimo eles.
    Log To Console    \n 1ª informação ${exercicio1.nome}   \n
    Log To Console    \n 2ª informação ${exercicio1.nome_do_meio}   \n
    Log To Console    \n 3ª informação ${exercicio1.sobrenome}   \n
    Log To Console    \n 4ª informação ${exercicio1.idade}   \n
    Log To Console    \n 5ª informação ${exercicio1.cpf}   \n
    Log To Console    \n 6ª informação ${exercicio1.email}   \n
    Log To Console    \n Completo ${exercicio1}   \n

Tenho uma Lista de Frutas e imprimo ela.
    Log To Console    \n 1ª Fruta ${exercicio2}[0]   \n
    Log To Console    \n 2ª Fruta ${exercicio2}[1]   \n
    Log To Console    \n 3ª Fruta ${exercicio2}[2]   \n
    Log To Console    \n 4ª Fruta ${exercicio2}[3]   \n
    Log To Console    \n 5ª Fruta ${exercicio2}[4]   \n
    Log To Console    \n Todas as Frutas ${exercicio2}   \n