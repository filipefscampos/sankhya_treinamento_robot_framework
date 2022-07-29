*** Keywords ***

Contar de 0 a 9
    FOR  ${count}  IN RANGE  0  9
        IF  ${count}==5
            Log    Encontrou o ${count}
        ELSE IF  ${count}==8
            Log    Encontrou o ${count}
        ELSE
            Log    Sem numero nenhum
        END
    END
