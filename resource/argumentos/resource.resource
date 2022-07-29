*** Keywords ***

Somar dois numeros
    [Arguments]    ${num_a}    ${num_b}
    ${soma}    Evaluate    ${num_a} + ${num_b}
    RETURN    ${soma}

Somar dois numeros ${num_a} e ${num_b}
    ${soma}    Evaluate    ${num_a} + ${num_b}
    RETURN    ${soma}

Imprime email com ${nome} ${sobrenome} ${idade}
    ${resultado}    Catenate    ${nome}.${sobrenome}${idade}@robot.com
    RETURN    ${resultado}
