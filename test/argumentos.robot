*** Settings ***

Resource    ../resource/argumentos/resource.resource

*** Test Cases ***

Meu teste de soma
    ${resultado}    Somar dois numeros    1    2
    Log    ${resultado}

Meu teste de soma com argumento
    ${resultado}    Somar dois numeros 1 e 10
    Log    ${resultado}

Meu teste imprime email
    ${resultado}    Imprime email com filipe campos 25
    Log    ${resultado}