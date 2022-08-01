*** Keywords ***

setup da minha suite de teste
    Log To Console    \n\n Executa ANTES de TODA suite \n\n

setup do teste
    Log To Console    \n\n Executa ANTES de CADA teste \n\n

teardown da minha suite de teste
    Log To Console    \n\n Executa DEPOIS de TODA suite de teste \n\n

teardown do teste
    Log To Console    \n\n Executa DEPOIS de CADA teste \n\n

setup default de teste
    Log To Console    \n\n Setup DEFAULT