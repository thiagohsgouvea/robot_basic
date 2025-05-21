*** Settings ***
Resource    ../../elements/main_elements.resource
Resource    ../../resources/settings.resource

*** Keywords ***
Quando acessar o menu "Eletrônicos"
    Click Element    locator=${MENU.ELETRONICS}

E o texto "Eletrônicos e Tecnologia" deve ser exibido na página
    Wait Until Page Contains         text=${ELETRONICS.TITLE}
    Wait Until Element Is Visible    locator=${ELETRONICS.HEADER}
E a categoria "${INFO_CATEGORY}" deve ser exibida na página
    Wait Until Element Is Visible    locator=//span[@class='a-size-base-plus'][normalize-space()='${INFO_CATEGORY}']