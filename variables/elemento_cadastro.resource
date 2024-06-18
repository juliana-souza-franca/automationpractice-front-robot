*** Settings ***
Resource         ../utils/settings.resource

*** Variables ***

${BOTAO_SINGIN}         class=header_user_info
${CAMPO_CRIAR_CONTA}    id=email_create
${BOTAO_CRIAR_CONTA}    id=SubmitCreate

${TITULO_RADIO}         id=uniform-id_gender2
${CAMPO_PRIMEIRO_NOME}  id=customer_firstname
${CAMPO_SOBRENOME}      id=customer_lastname
${CAMPO_SENHA}          id=passwd
${CAIXA_DIA_NASC}       xpath=//*[@id="days"]/option[14]
${CAIXA_MES_NASC}       xpath=//*[@id="months"]/option[5]
${CAIXA_ANO_NASC}       xpath=//*[@id="years"]/option[39]
${CHECKBOX}             xpath=//*[@id="newsletter"]
${BOTAO_CADASTRO}       id=submitAccount


${VALIDAR_CADASTRO}     class=account