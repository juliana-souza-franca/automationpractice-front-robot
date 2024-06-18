*** Settings ***
Resource     ../utils/settings.resource
Resource     ../utils/navegador.resource
Resource     ../variables/elemento_Login.resource
Resource     ../variables/elemento_cadastro.resource
Resource     ../variables/variaveis.resource




*** Keywords ***

 Acessar a pagina home Automation practice
  abrir o navegado

Click no menu "Sign In"
  Wait Until Element Is Visible      locator= ${BOTAO_SINGIN}
  Click Element                      locator=${BOTAO_SINGIN} 

 Logar na conta do login_usuario   
 
   Wait Until Element Is Visible    locator=${ENDERECO_E-MAIL}   
   Input Text    locator=${ENDERECO_E-MAIL}    text=${LOGIN}

   Wait Until Element Is Visible    locator=${SENHA_LOGIN}  
   Input Password    locator=${SENHA_LOGIN}      password=${SENHA}

   Click Button    locator=${BOTAO_LOGIN}  

 
 Verificar o usuario logado
     
     Element Should Be Visible    locator=${VALIDAR_LOGIN}

   fechar o navegado