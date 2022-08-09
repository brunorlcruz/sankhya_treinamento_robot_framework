*** Settings ***
Resource    ../resource/api/desafio_GET.resource


*** Test Cases ***

Pegar todos os usuarios ja cadastrados e printar a qtd dos usuarios ja cadastrados
    Dado que tenho os dados para efetuar o servico list_all_users
    Quando executo servico list_all_users
    Entao valido o status code da request 200