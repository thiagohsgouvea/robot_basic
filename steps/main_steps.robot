*** Settings ***
Resource    access/access_steps.robot
Resource    eletronics/eletronics_steps.robot
Resource    search/search_steps.robot


*** Keywords ***
Então o título da página deve ficar "${TITLE}"
    Title Should Be    title=${TITLE}