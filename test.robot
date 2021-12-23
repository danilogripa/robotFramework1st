*** Settings ***
Library   Browser

*** Test Cases ***
Buscar playwright no Google e acessar o site
    Abrindo uma tab no navegador no site
    Fazer pesquisa com a palavra "playwright"
    clickar no link do playwright
    Verificar se aparece o header do Playwright


*** Keywords ***
Abrindo uma tab no navegador no site
    New Browser    headless=False
    New Page    https://google.com

Fazer pesquisa com a palavra "playwright"
    Fill Text    css=input[name=q]    playwright
    Click        :nth-match(:text("Pesquisa Google"), 2)

clickar no link do playwright
    Click        "Playwright: Fast and reliable end-to-end testing for modern ..."

Verificar se aparece o header do Playwright
    Get Text        h1    ==    Playwright enables reliable end-to-end testing for modern web apps.

