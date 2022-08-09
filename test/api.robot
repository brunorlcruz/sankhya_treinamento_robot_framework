*** Settings ***
Resource    ../resource/api/resource_api.resource

*** Test Cases ***

Consultar lista de autores GET
    Requisitar todos os autores
    Conferir o status code 200
    Conferir o reason OK
    Conferir se retorna uma lista com 590 autores

Criar um novo autor
    Requisitar a criacao de um novo autor
    Conferir o status code 200
    Conferir o reason OK
    Conferir a resposta de retorno