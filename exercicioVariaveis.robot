*** Settings ***

Library     BuiltIn


*** Variables ***

@{frutas}    morango   banana   maça   uva   abacaxi
&{pessoa}    nome=Filipe   email=filipe.campos@sankhya.com.br   idade=30   sexo=masculino   cor=verde   preferencia=filmes

*** Test Cases ***

Teste de variavel do tipo lista
    [Tags]  variavelLista
    ${log}  Catenate   \n Eu gosto de ${frutas[0]}
    Log To Console  ${log}
    ${log}  Catenate   \n Eu gosto de ${frutas[1]}
    Log To Console  ${log}
    ${log}  Catenate   \n Eu gosto de ${frutas[2]}
    Log To Console  ${log}
    ${log}  Catenate   \n Eu gosto de ${frutas[3]}
    Log To Console  ${log}
    ${log}  Catenate   \n Eu gosto de ${frutas[4]}
    Log To Console  ${log}

Teste de variavel do dicionario linha a linha
    [Tags]  variaveDicionarioLinha
    ${log}  Catenate   \n Nome: ${pessoa.nome}
    Log To Console  ${log}
    ${log}  Catenate   \n Email: ${pessoa.email}
    Log To Console  ${log}
    ${log}  Catenate   \n Idade: ${pessoa.idade}
    Log To Console  ${log}
    ${log}  Catenate   \n Sexo: ${pessoa.sexo}
    Log To Console  ${log}
    ${log}  Catenate   \n Cor: ${pessoa.cor}
    Log To Console  ${log}
    ${log}  Catenate   \n Preferencia: ${pessoa.preferencia}
    Log To Console  ${log}
    
Teste de variavel do dicionario concatenado
    [Tags]  variaveDicionarioConcat
    ${log}  Catenate   \n Nome: ${pessoa.nome}, Email: ${pessoa.email}, Idade: ${pessoa.idade}, exo: ${pessoa.sexo}, Cor: ${pessoa.cor}, Preferencia: ${pessoa.preferencia}
    Log To Console  ${log}