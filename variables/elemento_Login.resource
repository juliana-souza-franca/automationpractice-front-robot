*** Settings ***
Resource       ../utils/settings.resource


*** Variables ***

${ENDERECO_E-MAIL}     xpath=//*[@id="email"]
${SENHA_LOGIN}         xpath=//*[@id="passwd"]
${BOTAO_LOGIN}       id=SubmitLogin

${VALIDAR_LOGIN}     xpath=//*[@id="center_column"]/p