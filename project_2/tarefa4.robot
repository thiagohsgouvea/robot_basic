*** Settings ***
Documentation    Imprimir todos os valores de uma variável do tipo lista.

*** Variables ***
@{MES}
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

&{DIAS}
...    Janeiro=31    
...    Fevereiro=28
...    Março=31
...    Abril=30
...    Maio=31
...    Junho=30
...    Julho=31
...    Agosto=31
...    Setembro=30
...    Outubro=31
...    Novembro=30
...    Dezembro=31

*** Test Cases ***
Test Case 1
    Log To Console    Em ${MES[0]} há ${DIAS.Janeiro} dias!
    Log To Console    Em ${MES[1]} há ${DIAS.Fevereiro} dias!
    Log To Console    Em ${MES[2]} há ${DIAS.Março} dias!
    Log To Console    Em ${MES[3]} há ${DIAS.Abril} dias!
    Log To Console    Em ${MES[4]} há ${DIAS.Maio} dias!
    Log To Console    Em ${MES[5]} há ${DIAS.Junho} dias!
    Log To Console    Em ${MES[6]} há ${DIAS.Julho} dias!
    Log To Console    Em ${MES[7]} há ${DIAS.Agosto} dias!
    Log To Console    Em ${MES[8]} há ${DIAS.Setembro} dias!
    Log To Console    Em ${MES[9]} há ${DIAS.Outubro} dias!
    Log To Console    Em ${MES[10]} há ${DIAS.Novembro} dias!
    Log To Console    Em ${MES[11]} há ${DIAS.Dezembro} dias!