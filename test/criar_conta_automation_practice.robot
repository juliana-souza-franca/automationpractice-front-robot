*** Settings ***
Resource         ../keywords/criar_conta_automation_practice.resource



*** Test Cases ***
cenario cadastro: Criar conta Automation Practice
  Acessar a pagina home Automation practice
  Click no menu "Sign In"
  Campo "CREATE AN ACCOUNT" preenche com um e-mail
  Preencher o formulario
  Verificar se o usuário foi cadastrado com sucesso
  