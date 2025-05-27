*** Settings ***
Documentation    Keywords com argumentos e retornos
Library    FakerLibrary

*** Variables ***
&{PESSOA}    nome=thiago    sobrenome=gouvea

*** Test Cases ***
TestCase Mostrar Email
    ${EMAIL}    Keyword gera e-mail    ${PESSOA.nome}    ${PESSOA.sobrenome}
    Log To Console    ${EMAIL}
    
*** Keywords ***
Keyword gera e-mail
    [Arguments]    ${NOME}    ${SOBRENOME}
    Log    Nome: ${NOME}
    Log    Sobrenome: ${SOBRENOME}
    # ${ALEATORY}    Word
    ${ALEATORY}    Pystr    max_chars=5
    ${EMAIL}    Set Variable    ${NOME}${SOBRENOME}${ALEATORY}@testerobot.com
    RETURN    ${EMAIL}