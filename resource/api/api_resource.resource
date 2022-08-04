*** Settings ***

Library    RequestsLibrary


*** Variables ***

${url_base}    https://fakerestapi.azurewebsites.net
${path_params}    /api/v1/Authors
${response}    ""


*** Keywords ***
Requisitar todos os autores
    ${end_point}    Catenate    ${url_base}${path_params}
    ${response}    GET    ${end_point}
    Set Test Variable    ${response}

Conferir o status code ${code}
    Status Should Be    200
    Log    ${response}

Conferir o status reason ${status_code}
    Should Be Equal As Strings    OK    ${response.reason}
    Log    ${response}

Conferir se retorna uma lista com ${num_item} autores
    ${dados_livro}    Set Variable    ${response.json()}[380]
    Log    ${dados_livro}

Requisitar a criacao de um novo autor
    

Conferir a resposta de retorno