*** Settings ***
Resource        ../keywords/pesquisa_pagina_home.resource


*** Test Cases ***
Cenario de teste: Pesquisar produto existente 
  Acessar a pagina home Automation practice
  Digitar o nome do produto "Blouse" no campo de pesquisa_pagina_home
  Clicar no botão
  Verificar se o produto foi listado 
  
