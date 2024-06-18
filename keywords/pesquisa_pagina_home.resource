*** Settings ***
Resource         ../utils/settings.resource
Resource        ../utils/navegador.resource
Resource        ../variables/acesso_automation_practice.resource
Resource         ../variables/elemento_home.resource


*** Keywords ***
Acessar a pagina home Automation practice
  abrir o navegado
 
    Sleep    2s
Digitar o nome do produto "Blouse" no campo de pesquisa_pagina_home 
  Wait Until Element Is Visible    locator=${CAMPO_PESQUISA_HOME}
  Click Element                    locator=${CAMPO_PESQUISA_HOME}
  Input Text                       locator=${CAMPO_PESQUISA_HOME}    text=Blouse
   
   Sleep   2s
 Clicar no botão  
   Click Element                   locator=${BOTÃO_LUPA_PESQUISA}  

Verificar se o produto foi listado 
   Double Click Element                     locator=${LINK_BLOUSE}  
   Element Should Be Visible         locator=${VALIDAR_PEDIDO_BLOUSE} 

   fechar o navegado