*** Variables ***

@{frutas}    morango    abacaxi    tomate    maca    bana
@{paises}    brasil    bahia    itabuna    bbpm    casa

*** Keywords ***

Contar de 0 a 9
    FOR  ${count}  IN RANGE  0  9
        Log    ${count}
    END

Percorrer itens de uma lista
    FOR  ${fruta}    IN    @{frutas}
        Log    ${fruta} \n
    END

Contar de 0 a 10
    FOR  ${count}  IN RANGE  0  11
        Log    Estou no numero: ${count} 
    END

Imprimir nome dos paises
    FOR  ${pais}    IN    @{paises}
        Log    ${pais} \n
    END