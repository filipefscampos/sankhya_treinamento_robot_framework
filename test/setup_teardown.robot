*** Settings ***

resource    ../resource/setup_teardown/resource.resource

Suite Setup    setup da minha suite de teste
Suite Teardown    teardown da minha suite de teste


*** Test Cases ***

login do sistema
    [Setup]    setup do teste
    Log To Console    \n\n Fazendo o login \n\n
    [Teardown]    teardown do teste

cenario de compra
    [Setup]    setup do teste
    Log To Console    \n\n Fazendo um pedido de compra \n\n
    [Teardown]    teardown do teste
