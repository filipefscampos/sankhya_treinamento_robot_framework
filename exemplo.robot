*** Settings ***

Library     BuiltIn


*** Variables ***

${log}
${h}    hello
${w}    word
${nome}     Filipe
@{frutas}    morango   banana   maça   uva   abacaxi
&{pessoa}    nome=Filipe   email=filipe.campos@sankhya.com.br   idade=30   sexo=masculino

*** Test Cases ***

Primeiro teste
    [Tags]  Catenate
    ${log}  Catenate    \n hello   word
    Log To Console  ${log}

Teste com tag e variavel simples
    [Tags]  imprimir
    ${log}  Catenate   \n ${h} ${w}
    Log To Console  ${log}

Teste com tag e variavel simples novamente
    [Tags]  variavelSimples
    ${log}  Catenate   \n Terceiro Balaio de ${nome}
    Log To Console  ${log}

Teste de variavel do tipo lista
    [Tags]  variavelLista
    ${log}  Catenate   \n Eu gosto de ${frutas[0]} e ${frutas[2]}
    Log To Console  ${log}

Teste de variavel do dicionario
    [Tags]  variaveDicionario
    ${log}  Catenate   \n Nome: ${pessoa.nome} tem ${pessoa.idade} anos
    Log To Console  ${log}