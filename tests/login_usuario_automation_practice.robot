*** Settings ***
Resource       ../keywords/login_usuario.resource




*** Test Cases ***

cenario: Logar a conta
  Acessar a pagina home Automation practice
  Click no menu "Sign In"
  Logar na conta do login_usuario
  Verificar o usuario logado
  