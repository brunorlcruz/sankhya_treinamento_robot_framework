*** Settings ***
Resource    ../resource/api/api_teste.resource

*** Test Cases ***

Exercicios Livros
    Preparando hambiente da conexao
    Confere status code
    Confere o reason ok
    Confere se retorna 200 livros

Exercicio livro 15
    [Tags]    Livro15
    Preparando hambiente da conexao livro 15
    Confere status code
    Confere o reason ok
    Dados do livro 15