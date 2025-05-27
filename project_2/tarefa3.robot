*** Settings ***
Documentation    Imprimir todos os valores de uma variável do tipo lista.

*** Variables ***
@{MESES}
...    Janeiro    
...    Fevereiro
...    Março
...    Abril
...    Maio
...    Junho
...    Julho
...    Agosto
...    Setembro
...    Outubro
...    Novembro
...    Dezembro

*** Test Cases ***
Test Case 1
    Log To Console   ${\n} 01: ${MESES[0]} ${\n} 02: ${MESES[1]} ${\n} 03: ${MESES[2]} ${\n} 04: ${MESES[3]} ${\n} 05: ${MESES[4]} ${\n} 06: ${MESES[5]} ${\n} 07: ${MESES[6]} ${\n} 08: ${MESES[7]} ${\n} 09: ${MESES[8]} ${\n} 10: ${MESES[9]} ${\n} 11: ${MESES[10]} ${\n} 12: ${MESES[11]}
# Test Case 1
#     Imprimindo as variáveis

# *** Keywords ***
# Imprimindo as variáveis
#     Log    01 - ${MESES[0]}, 02 - ${MESES[1]}, 03 - ${MESES[2]}, 04 - ${MESES[3]}, 05 - ${MESES[4]}, 06 - ${MESES[5]}, 07 - ${MESES[6]}, 08 - ${MESES[7]}, 09 - ${MESES[8]}, 10 - ${MESES[9]}, 11 - ${MESES[10]}, 12 - ${MESES[11]}