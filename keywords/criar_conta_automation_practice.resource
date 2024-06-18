*** Settings ***
Resource        ../utils/settings.resource
Resource        ../utils/navegador.resource
Resource        ../variables/acesso_automation_practice.resource
Resource        ../variables/elemento_cadastro.resource
Resource        ../variables/variaveis.resource
Resource         ./massa_dinamica.resource


*** Keywords ***

Acessar a pagina home Automation practice
  abrir o navegado

Click no menu "Sign In"
  Wait Until Element Is Visible    locator= ${BOTAO_SINGIN}
  Click Element                    locator=${BOTAO_SINGIN} 

 Campo "CREATE AN ACCOUNT" preenche com um e-mail
  massa dinamica

  Wait Until Element Is Visible    locator=${CAMPO_CRIAR_CONTA}
  Input Text                       locator=${CAMPO_CRIAR_CONTA}    text=${EMAIL_DINAMICO}  
  Click Element                    locator=${BOTAO_CRIAR_CONTA} 

 Preencher o formulario
  
  Wait Until Element Is Visible    locator=${TITULO_RADIO}
  Wait Until Element Is Enabled    locator=${TITULO_RADIO}
  Click Element           locator=${TITULO_RADIO}  
 

  Wait Until Element Is Visible    locator=${CAMPO_PRIMEIRO_NOME}
  Input Text    locator=${CAMPO_PRIMEIRO_NOME}   text=Juliana

  Wait Until Element Is Visible    locator=${CAMPO_SOBRENOME}
  Input Text    locator=${CAMPO_SOBRENOME}  text=França

  Wait Until Element Is Visible    locator=${CAMPO_SENHA} 
  Input Text    locator=${CAMPO_SENHA}     text=${SENHA}

  Wait Until Element Is Visible    locator=${CAIXA_DIA_NASC}
  Click Element    locator=${CAIXA_DIA_NASC}

  Wait Until Element Is Visible    locator=${CAIXA_MES_NASC}
  Click Element    locator=${CAIXA_MES_NASC}

  Wait Until Element Is Visible    locator=${CAIXA_ANO_NASC} 
  Click Element    locator=${CAIXA_ANO_NASC} 
  

  Wait Until Element Is Not Visible    locator=${CHECKBOX}  
  Click Element    locator=${CHECKBOX}  

  Click Element    locator=${BOTAO_CADASTRO} 


Verificar se o usuário foi cadastrado com sucesso
  
  Element Should Be Visible    locator=${VALIDAR_CADASTRO}


  fechar o navegado