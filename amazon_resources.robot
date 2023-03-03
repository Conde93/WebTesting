*** Settings ***
Library          SeleniumLibrary

*** Variables ***
${URL}                          https://www.amazon.com.br/
${MAIS_VENDIDOS}                //a[@href='/gp/bestsellers/?ref_=nav_cs_bestsellers'][contains(.,'Mais Vendidos')]  
${LOGO_AMAZON}                  //a[contains(@class,'nav-logo-link nav-progressive-attribute')]
${HEADER_MAIS_VENDIDOS}         //span[contains(@class,'a-size-extra-large a-color-base _p13n-zg-banner-landing-page-header_style_zgLandingPageBannerText__3HlJo')]



*** Keywords ***

Abrir o navegador
    Open Browser  browser=chrome
    Maximize Browser Window

Fechar o navegador
    Close Browser

 Acessar a home page do site Amazon.com.br
    Go To                            url=${URL}
    Wait Until Element Is Visible    locator=${LOGO_AMAZON}

Entrar no menu "Mais vendidos"
    Click Element                    locator=${MAIS_VENDIDOS}
    
Verificar se aparece a frase "${FRASE}"
    Wait Until Page Contains         text=${FRASE}
    Wait Until Element Is Visible    locator=${HEADER_MAIS_VENDIDOS}
   
 Verificar se o título da página fica "Amazon.com.br Mais Vendidos: Os itens mais populares na Amazon"  
    Title Should Be                  title=Amazon.com.br Mais Vendidos: Os itens mais populares na Amazon
       
 Verificar se aparece a categoria "Computadores e Informática}"
     Element Should Be Visible       locator=//a[@href='/gp/bestsellers/computers/ref=zg_bs_nav_0'][contains(.,'Computadores e Informática')]
     

     