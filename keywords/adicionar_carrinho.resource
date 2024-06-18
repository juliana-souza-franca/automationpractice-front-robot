*** Settings ***
Resource     ../utils/settings.resource
Resource     ../utils/navegador.resource
Resource     ../variables/elemento_add_carrinho.resource

*** Keywords ***
Acessar a pagina home Automation practice
  abrir o navegado

Clica no menu"WOMEN"
  Click Element    locator=${MENU_WOMEN}  

 Escolher um produto
   Wait Until Element Is Visible    locator=${PRODUTO}
   Double Click Element    locator=${ADD_PRODUTO}
   
  
   Element Should Be Visible    locator=${TAMNAHO_PRODUTO}
   Click Element                locator=${TAMNAHO_PRODUTO}


    Wait Until Element Is Visible  locator=${CORES} 
    Click Element                  locator=${CORES} 
    Click Element                  locator=${BOTAO_ADD}

 Verificar o produto no carrinho
   Element Should Not Be Visible    locator=${VALIDAR_PRODUTO_CARRINHO} 

  fechar o navegado