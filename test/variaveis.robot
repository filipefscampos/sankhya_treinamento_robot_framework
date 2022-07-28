*** Settings ***

Resource    ../resource/variaveis/resource.resource

*** Test Cases ***

Exercicio 1 - Imprimir a varriavel do tipo lista
    [Tags]  variavelLista
    [Documentation]     teste para imprimir variavel de lista
    Tenho uma lista de fruta e imprio ela

Exercicio 2 - Imprimir a variavel do tipo dicionario
    [Tags]  variavelDicionario
    [Documentation]     teste para imprimir variavel de dicionario
    Tenho um dicionario com dados pessoais e mando imprimir tais dados