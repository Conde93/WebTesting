*** Settings ***
Documentation  Essa suite testa o site da Amazon.com.br
Resource       amazon_resources.robot
Test Setup     Abrir o navegador
#Test Teardown  Fechar o navegador


*** Test Cases ***

Caso de testes 01 - Acesso ao menu "Mais vendidos"
    [Documentation]  Esse teste verifica o menu de letronicos do site Amazon.com.br
    ...              e verifica a categoria computadores e Informática
    [Tags]           menus
    Acessar a home page do site Amazon.com.br
    Entrar no menu "Mais vendidos"
    Verificar se aparece a frase "Mais vendidos"
    Verificar se o título da página fica "Amazon.com.br Mais Vendidos: Os itens mais populares na Amazon"    
    Verificar se aparece a categoria "Computadores e Informática"
# Caso de testes 02 - Pesquisa de um Produto
#     [Documentation]  Esse teste verifica a busca de um produto
#     [Tags]           busca_produtos  lista_busca
#     Acessar a home page do site Amazon.com.br
#     Digitar o nome de produto "Xbox Series S" no campo de pesquisa
#     Clicar no botão de pesquisa
#     Verificar o resultado da pesquisa, listando o produto pesquisado
