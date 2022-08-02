*** Settings ***
Resource    ../resource/setup_teardown/resource_setup.resource
Suite Setup     setup da minha suite de teste
Suite Teardown    teardown da minha suite de teste


*** Test Cases ***

cenario de login SankhyaOM
    [Setup]    setup dos meus testes
    [Teardown]    Teardown dos meus testes
    Log To Console     \n\n Estou dentro do meu teste 1 \n\n

cenario de compra dentro do SankhyaOM
    [Setup]    setup dos meus testes
    [Teardown]    Teardown dos meus testes
    Log To Console     \n\n Estou dentro do meu teste 2 \n\n
