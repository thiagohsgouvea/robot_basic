*** Settings ***
Resource    ../../elements/main_elements.resource
Resource    ../../resources/settings.resource

*** Keywords ***
Quando pesquisar pelo produto "${PRODUCT}"
    Input Text      id=${HOME.SEARCH_FIELD}    text=${PRODUCT}
    Click Button    id=${HOME.SEARCH_BUTTON}

E um produto da linha "Xbox Series S" deve ser mostrado na página
    Wait Until Page Contains    text=${SEARCH.TEXT}