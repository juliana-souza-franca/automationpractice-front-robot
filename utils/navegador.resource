*** Settings ***
Resource         ./settings.resource
Resource         ../variables/acesso_automation_practice.resource


*** Keywords ***

abrir o navegado
   Open Browser    browser=${headlesschrome}
  # Maximize Browser Window
   Go To     url=${URL}
   Maximize Browser Window
fechar o navegado 
   Close Browser