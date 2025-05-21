*** Settings ***
Resource    ../../elements/main_elements.resource
Resource    ../../resources/settings.resource

*** Keywords ***
Dado que estou na home page da Amazon.com.br
    Open Browser                     url=${URL}    browser=${BROWSER}
    Maximize Browser Window
    Wait Until Element Is Visible    id=${LOGO}

E fecho o navegador
    Capture Page Screenshot
    Close Browser