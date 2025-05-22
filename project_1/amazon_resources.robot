*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${BROWSER}    firefox
${URL}        https://www.amazon.com.br
${LOGO}       nav-logo-sprites
&{ELETRONICS}    
...    MENU=//a[normalize-space()='Eletrônicos']
...    HEADER=//div[@class='_Y29ud_bxcGridText_3AiaV _Y29ud_cgTextLeft_3L3pI _Y29ud_bxcGridTextLight_f2KTn']//span[contains(text(),'Eletrônicos e Tecnologia')]
&{CAT}
...    CI=//span[@class='a-size-base-plus'][normalize-space()='Computadores e Informática']
...    TV=//span[@class='a-size-base-plus'][normalize-space()='TV e Cinema']
...    AS=//span[@class='a-size-base-plus'][normalize-space()='Áudio e Som']
&{SEARCH}
...    BUTTON=nav-search-submit-button
...    FIELD=twotabsearchtextbox
&{RESULTS}
...    TEXT=resultados para "Xbox Series S"
...    PRODUCT=//span[normalize-space()='Console Xbox Series S']
&{PRODUCT}
...    TITLE=productTitle
...    ADD=add-to-cart-button
&{CART}
...    TITLE=(//h2[normalize-space()='Carrinho de compras'])[1]
...    ADDED=Adicionado ao carrinho
...    BUTTON=nav-cart
...    PRODUCT=Console Xbox Series S
...    DELETE=//span[@class='a-icon a-icon-small-trash']
...    DELETED=foi removido de Carrinho de compras.


*** Keywords ***
Abrir o navegador
    Open Browser    browser=${BROWSER}
    Maximize Browser Window

Fechar o navegador
    Capture Page Screenshot
    Close Browser

Acessar a home page do site Amazon.com.br
    Go To    url=${URL}
    Wait Until Element Is Visible    locator=${LOGO}

Entrar no menu "Eletrônicos"
    Click Element    locator=${ELETRONICS.MENU}

Verificar se aparece a frase "Eletrônicos e Tecnologia"
    Wait Until Element Is Visible    locator=${ELETRONICS.HEADER}

Verificar se o título da página fica "${ELETRONICS.TITLE}"
    Title Should Be    title=${ELETRONICS.TITLE}

Verificar se aparece a categoria "${CATEGORIA}"
    Element Should Be Visible    locator=//span[@class='a-size-base-plus'][normalize-space()='${CATEGORIA}']

Digitar o nome de produto "${SEARCH.TEXT}" no campo de pesquisa
    Input Text    locator=${SEARCH.FIELD}    text=${SEARCH.TEXT}

Clicar no botão de pesquisa
    Click Button    locator=${SEARCH.BUTTON}

Verificar se o resultado da pesquisa está listando o produto pesquisado
    Page Should Contain    text=${RESULTS.TEXT}
    
Adicionar o produto "Console Xbox Series S" no carrinho
    Click Element    locator=${RESULTS.PRODUCT}
    Wait Until Page Contains Element    id=${PRODUCT.TITLE}
    Click Button    locator=${PRODUCT.ADD}
    Sleep    3s
    Press Keys    None    ESC
    Press Keys    None    ESC
    Sleep    3s

Verificar se o produto "Console Xbox Series S" foi adicionado com sucesso
    Click Link    locator=${CART.BUTTON}
    Wait Until Element Is Visible    locator=${CART.TITLE}
    Page Should Contain    text=${CART.PRODUCT}

Remover o produto "Console Xbox Series S" do carrinho
    Click Element    locator=${CART.DELETE}

Verificar se o carrinho fica vazio
    Page Should Contain    text=${CART.DELETED}


######## Gherkin Steps ########
Dado que estou na home page da Amazon.com.br
    Acessar a home page do site Amazon.com.br
Quando acessar o menu "Eletrônicos"
    Entrar no menu "Eletrônicos"
Então o título da página deve ficar "Eletrônicos e Tecnologia | Amazon.com.br"
    Verificar se o título da página fica "Eletrônicos e Tecnologia | Amazon.com.br"
E o texto "Eletrônicos e Tecnologia" deve ser exibido na página
    Verificar se aparece a frase "Eletrônicos e Tecnologia"
E a categoria "Computadores e Informática" deve ser exibida na página
    Verificar se aparece a categoria "Computadores e Informática"
Quando pesquisar pelo produto "Xbox Series S"
    Digitar o nome de produto "Xbox Series S" no campo de pesquisa
    Clicar no botão de pesquisa
Então o título da página deve ficar "Amazon.com.br : Xbox Series S"
    Verificar se o título da página fica "Amazon.com.br : Xbox Series S"
E um produto da linha "Xbox Series S" deve ser mostrado na página
    Verificar se o resultado da pesquisa está listando o produto pesquisado
Quando adicionar o produto "Console Xbox Series S" no carrinho
    Quando pesquisar pelo produto "Xbox Series S"
    E um produto da linha "Xbox Series S" deve ser mostrado na página
    Adicionar o produto "Console Xbox Series S" no carrinho
Então o produto "Console Xbox Series S" deve ser mostrado no carrinho
    Verificar se o produto "Console Xbox Series S" foi adicionado com sucesso
E existe o produto "Console Xbox Series S" no carrinho
    Quando adicionar o produto "Console Xbox Series S" no carrinho
    Então o produto "Console Xbox Series S" deve ser mostrado no carrinho
Quando remover o produto "Console Xbox Series S" do carrinho
    Remover o produto "Console Xbox Series S" do carrinho
Então o carrinho deve ficar vazio
    Verificar se o carrinho fica vazio
    