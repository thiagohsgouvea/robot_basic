*** Settings ***
Resource    ../../steps/main_steps.robot

*** Test Cases ***
Test Case 01 - Acessando a página Eletrônicos através do menu
    [Documentation]    Esse teste verifica o acesso a página Eletrônicos
    ...                através do menu principal na home page da Amazon
    [Tags]             menu
    Dado que estou na home page da Amazon.com.br
    Quando acessar o menu "Eletrônicos"
    Então o título da página deve ficar "Eletrônicos e Tecnologia | Amazon.com.br"
    E o texto "Eletrônicos e Tecnologia" deve ser exibido na página
    E a categoria "Computadores e Informática" deve ser exibida na página
    E fecho o navegador

    # Dado que eu acesse a home page da Amazon
    # Quando eu clicar o menu Eletronicos
    # Então a página Eletronicos deve ser exibida
    # E o titulo da pagina de ver ser exibido
    # E as categorias devem ser exibidas
    # E fecho o navegador
    