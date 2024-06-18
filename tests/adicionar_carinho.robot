*** Settings ***
Resource      ../keywords/adicionar_carrinho.resource



*** Test Cases ***
cenario: Adicionar um produto no adicionar_carrinho
   Acessar a pagina home Automation practice
   Clica no menu"WOMEN"
   Escolher um produto
   Verificar o produto no carrinho
   