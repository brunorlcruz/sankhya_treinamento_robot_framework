*** Settings ***
Resource    ../resource/api/desafio_POST.resource
Suite Teardown    Deletar Usuario Criado


*** Test Cases ***

Cadastro um novo usuario de nome e sobrenome
    Dado que tenho os dados para efetuar o servico creat_user
    Quando executo servico creat_user
    Valido se o usuario foi criado utilizando a request de get_user