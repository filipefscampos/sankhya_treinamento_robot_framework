*** Settings ***

Resource    ../resource/api/api_resource.resource


*** Test Cases ***

Consultar lista de autores GET /api/v1/Authors
    Requisitar todos os autores
    Conferir o status code 200
    Conferir o status reason OK
    Conferir se retorna uma lista com 380 autores

Criar um novo autor
    Requisitar a criacao de um novo autor
    Conferir o status code 200
    Conferir o status reason OK
    Conferir a resposta de retorno