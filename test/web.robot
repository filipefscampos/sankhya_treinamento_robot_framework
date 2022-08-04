*** Settings ***

Library    SeleniumLibrary
Test Teardown    Close Browser


*** Variables ***

${url}    https://atacadistriborclhd411.qa.sankhya.com.br/mge
${campo_usuario}    //input[@id='login'] 
${campo_senha}    password
${botao_logar}    //button[@class='btn-login']
${validar_login}    //img[contains(@src,"evo-wallpaper")]
${usuario}    sup
${senha}    atacado


*** Keywords ***

Dado que estou com o navegador aberto na pagina da Sankhya
    Open Browser    url=${url}    browser=gc
    Maximize Browser Window
Quando realizo o login
    Wait Until Element Is Visible    ${campo_usuario}
    Input Text    ${campo_usuario}    ${usuario}
    Wait Until Element Is Visible    ${campo_senha}
    Input Text    ${campo_senha}    ${senha}
    Wait Until Element Is Visible    ${botao_logar}
    Click Button    ${botao_logar}
Entao valido que estou logado
    Wait Until Page Contains Element    ${validar_login}    15


*** Test Cases ***

Login no sankhyaOm
    Dado que estou com o navegador aberto na pagina da Sankhya
    Quando realizo o login
    Entao valido que estou logado