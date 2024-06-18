*** Settings ***
Resource      ../utils/settings.resource


*** Variables ***

${MENU_WOMEN}              xpath=//*[@id="block_top_menu"]/ul/li[1]/a
${PRODUTO}                 xpath=//*[@id="center_column"]/ul/li[4]/div
${ADD_PRODUTO}             xpath=//*[@id="center_column"]/ul/li[4]/div/div[2]/h5/a

${TAMNAHO_PRODUTO}         xpath=//*[@id="group_1"]/option[2]

${CORES}                  xpath=//*[@id="color_24"]
${BOTAO_ADD}              xpath=//*[@id="add_to_cart"]/button/span


${VALIDAR_PRODUTO_CARRINHO}       class=layer_cart_cart col-xs-12 col-md-6