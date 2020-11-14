*** Settings ***
Resource        base.robot

Test Setup      Novo Acesso
Test Teardown   Encerra Acesso

*** Test Cases ***
Validando o saldo em conta corrente Corporate
    Click Element                       id:AccountLink
    Input Text                          id:uid                          admin
    Input Text                          id:passw                        admin
    Click Button                        css:input[name="btnSubmit"]
    Select From List By Value           id:listAccounts                 800000
    Click Button                        id:btnGetAccount
    ${saldo}                            Get WebElement                  xpath:.//td[contains(.,'Available balance')]              #.//tr[contains(.,'Balance Detail')]
    Log                                 ${saldo.text}
    Log To Console                      ${saldo.text}
    Should Contain                      ${saldo.text}                   $52394583.61


 
		          