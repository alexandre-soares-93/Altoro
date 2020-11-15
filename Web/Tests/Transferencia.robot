*** Settings ***
Resource        base.robot

Test Setup      Novo Acesso
Test Teardown   Encerra Acesso

*** Test Cases ***
Efetuando transferencia da conta Corporate para conta Checking
    Click Element                       id:AccountLink
    Input Text                          id:uid                          admin
    Input Text                          id:passw                        admin
    Click Button                        css:input[name="btnSubmit"]
    Click Element                       xpath://a[@href="/bank/transfer.jsp"]
    Select From List By Value           id:fromAccount                  800000
    Select From List By Value           id:toAccount                    800001
    Input Text                          id:transferAmount               200
    Click Button                        id:transfer
    ${ted}                              Get WebElement                  id:_ctl0__ctl0_Content_Main_postResp
    Log                                 ${ted.text}
    Log To Console                      ${ted.text}  

Efetuando transferencia da conta Checking para conta Corporate
    Click Element                       id:AccountLink
    Input Text                          id:uid                          admin
    Input Text                          id:passw                        admin
    Click Button                        css:input[name="btnSubmit"]
    Click Element                       xpath://a[@href="/bank/transfer.jsp"]
    Select From List By Value           id:fromAccount                  800001
    Select From List By Value           id:toAccount                    800000
    Input Text                          id:transferAmount               300
    Click Button                        id:transfer
    ${ted}                              Get WebElement                  id:_ctl0__ctl0_Content_Main_postResp
    Log                                 ${ted.text}
    Log To Console                      ${ted.text}               