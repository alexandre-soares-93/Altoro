*** Settings ***
Resource        base.robot

Test Setup      Novo Acesso
Test Teardown   Encerra Acesso

*** Test Cases ***
Selecionando conta Corporate pelo texto e validando pelo valor
    [Tags]                              Corporate
    Click Element                       id:AccountLink
    Input Text                          id:uid                          admin
    Input Text                          id:passw                        admin
    Click Button                        css:input[name="btnSubmit"]
    Select From List By Label           id:listAccounts                 800000 Corporate
    ${conta}=                           Get Selected List Value         id:listAccounts
    Should Be Equal                     ${conta}                        800000

Selecionando conta Checking pelo texto e validando pelo valor
    [Tags]                              Checking
    Click Element                       id:AccountLink
    Input Text                          id:uid                          admin
    Input Text                          id:passw                        admin
    Click Button                        css:input[name="btnSubmit"]
    Select From List By Label           id:listAccounts                 800001 Checking
    ${conta}=                           Get Selected List Value         id:listAccounts
    Should Be Equal                     ${conta}                        800001

Selecionando conta Corporate pelo valor e validar pelo texto
    [Tags]                              Corporate
    Click Element                       id:AccountLink
    Input Text                          id:uid                          admin
    Input Text                          id:passw                        admin
    Click Button                        css:input[name="btnSubmit"]
    Select From List By Value           id:listAccounts                 800000
    ${conta}=                           Get Selected List Label         id:listAccounts
    Should Be Equal                     ${conta}                        800000 Corporate

Selecionando conta Checking pelo valor e validar pelo texto
   [Tags]                              Checking
    Click Element                       id:AccountLink
    Input Text                          id:uid                          admin
    Input Text                          id:passw                        admin
    Click Button                        css:input[name="btnSubmit"]
    Select From List By Value           id:listAccounts                 800001
    ${conta}=                           Get Selected List Label         id:listAccounts
    Should Be Equal                     ${conta}                        800001 Checking

Acessando conta Corporate
    [Tags]                              AcessaConta
    Click Element                       id:AccountLink
    Input Text                          id:uid                          admin
    Input Text                          id:passw                        admin
    Click Button                        css:input[name="btnSubmit"]
    Select From List By Value           id:listAccounts                 800000
    Click Button                        id:btnGetAccount
    ${conta}                            Get WebElement                  xpath://div[@class="fl"]
    Should Contain                      ${conta.text}                   Account History - 800000 Corporate

Acessando conta Checking
    [Tags]                              AcessaConta
    Click Element                       id:AccountLink
    Input Text                          id:uid                          admin
    Input Text                          id:passw                        admin
    Click Button                        css:input[name="btnSubmit"]
    Select From List By Value           id:listAccounts                 800001
    Click Button                        id:btnGetAccount
    ${conta}                            Get WebElement                  xpath://div[@class="fl"]
    Should Contain                      ${conta.text}                   Account History - 800001 Checking