*** Settings ***

Library    RequestsLibrary
Library    OperatingSystem
Library    Collections

*** Variables ***

${payload}    ""
${params}
${url_base}    https://atacadistriborclhd411.qa.sankhya.com.br/
&{path_params}    geral=mge/service.sbr?    com=mgecom/service.sbr?
${end_point}
${response}
${response_pedido}

*** Keywords ***

Dado que tem as configuracoes da requisicao
    ${payload_string}    Get File    ./resource/api/login.json
    ${params}    Create Dictionary    serviceName=MobileLoginSP.login
    ...                               outputType=json
    ${end_point}    Catenate    ${url_base}${path_params.geral}
    Set Test Variable   ${payload}    ${payload_string}
    Set Test Variable    ${params}
    Set Test Variable    ${end_point}
Quando envio essa requisicao de login
    ${response}    POST    url=${end_point}    params=${params}    data=${payload}
    Set Test Variable    ${response}
Entao valido o atributo status ${status}
    ${response_status}    Set Variable    ${response.json()}[status]
    Should Be Equal As Strings    ${status}    ${response_status}
Adicionar parametro jsseion e atualizar session name
    Set To Dictionary    ${params}    mgeSession=${response.json()}[responseBody][jsessionid][$]
    Set To Dictionary    ${params}    serviceName=CACSP.incluirNota
Dado que eu estou logado
    Dado que tem as configuracoes da requisicao
    Quando envio essa requisicao de login
    Adicionar parametro jsseion e atualizar session name
Quando crio um pedido
    ${payload_pedido}    Get File    ./resource/api/pedido.json
    ${end_point}    Catenate    ${url_base}${path_params.com}
    ${response_pedido}    POST    url=${end_point}    params=${params}    data=${payload_pedido}
    Set Test Variable    ${response_pedido}
Entao valido um pedido XPTO
    ${status_pedido}    Set Variable    ${response_pedido.json()}[status]
    Should Be Equal As Strings    1    ${status_pedido}