*** Settings ***

Documentation   Criando arquivo '.resource' do exercicio 'variaveis'
Library     Collections

*** Variables ***

@{listaFrutas}    morango   banana   maça   uva   abacaxi
&{dicionarioPessoa}    nome=Filipe   email=filipe.campos@sankhya.com.br   idade=30   sexo=masculino   cor=verde   preferencia=filmes

*** Keywords ***

Tenho um dicionario com dados pessoais e mando imprimir tais dados
    Log To Console  \n Imprimindo o dicionario pessoa: ${dicionarioPessoa} \n
    Log To Console  \n Nome: ${dicionarioPessoa.nome} \n
    Log To Console  \n Email: ${dicionarioPessoa.email} \n
    Log To Console  \n idade: ${dicionarioPessoa.idade} \n
    Log To Console  \n Sexo: ${dicionarioPessoa.sexo} \n
    Log To Console  \n Cor: ${dicionarioPessoa.cor} \n
    Log To Console  \n Preferencia: ${dicionarioPessoa.preferencia} \n

Tenho uma lista de fruta e imprio ela
    Log To Console  \n Imprimindo a lista ${listaFrutas}
    Log To Console  \n 1: ${listaFrutas[0]} \n
    Log To Console  \n 2: ${listaFrutas[1]} \n
    Log To Console  \n 3: ${listaFrutas[2]} \n
    Log To Console  \n 4: ${listaFrutas[3]} \n
    Log To Console  \n 5: ${listaFrutas[4]} \n