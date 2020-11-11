*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${url}          http://altoromutual.com:8080/          chrome

**** Keywords ***

Novo Acesso
    Open Browser                    ${url}              chrome

Encerra Acesso
    Capture Page Screenshot
    Close Browser