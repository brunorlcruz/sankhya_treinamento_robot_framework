*** Settings ***
Resource    ../resource/api/api_sankhya.resource

*** Test Cases ***
Efetuar login no sankhya
    Dado que tem as configuracoes da requisicao
    Quando envio esta requisicao de Login
    Entao valido o atributo 1

#Criar um pedido
 #   Dado que eu estou logado
 #   Quando crio um pedido
  #  Entao valido meu pedido
