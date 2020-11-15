*** Settings ***
Resource        base.robot

Test Setup      Novo Acesso
Test Teardown   Encerra Acesso

*** Test Cases ***
Alterando as permissões do usuário
    [Tags]                                  permit
    Click Element                           id:AccountLink
    Input Text                              id:uid                                  admin
    Input Text                              id:passw                                admin
    Click Button                            css:input[name="btnSubmit"]
    Click Element                           xpath://a[@href="/admin/admin.jsp"]
    Select From List By Label               id:username                             tuser
    Select From List By Label               css:select[name="accttypes"]            Savings
    Click Button                            xpath://input[@value="Add Account"]

