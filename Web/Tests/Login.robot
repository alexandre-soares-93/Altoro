*** Settings ***
Resource        base.robot

Test Setup      Novo Acesso
Test Teardown   Encerra Acesso

*** Test Cases ***
Validando o acesso ao internet banking com conta funcionario pelo (Online banking login)
    Click Element       id:AccountLink
    Input Text          id:uid                          admin
    Input Text          id:passw                        admin
    Click Button        css:input[name="btnSubmit"]
    ${bem_vindo}        Get WebElement                  xpath://div[@class="fl"]
    Should Contain      ${bem_vindo.text}               Hello Admin User

Validando o acesso ao internet banking com conta funcionario pelo (Sign In)
    Click Element       id:LoginLink
    Input Text          id:uid                          admin
    Input Text          id:passw                        admin
    Click Button        css:input[name="btnSubmit"]
    ${bem_vindo}        Get WebElement                  xpath://div[@class="fl"]
    Should Contain      ${bem_vindo.text}               Hello Admin User

Validando o acesso ao internet banking com conta funcionario com senha invalida
    Click Element       id:AccountLink
    Input Text          id:uid                          admin
    Input Text          id:passw                        aooba
    Click Button        css:input[name="btnSubmit"]
    ${senha}            Get WebElement                  id:_ctl0__ctl0_Content_Main_message
    Should Contain      ${senha.text}                   Login Failed: We're sorry, but this username or password was not found in our system. Please try again.

Validando o acesso ao internet banking com conta funcionario com senha invalida 
    Click Element       id:LoginLink
    Input Text          id:uid                          admin
    Input Text          id:passw                        aooba
    Click Button        css:input[name="btnSubmit"]
    ${senha}            Get WebElement                  id:_ctl0__ctl0_Content_Main_message
    Should Contain      ${senha.text}                   Login Failed: We're sorry, but this username or password was not found in our system. Please try again.
		

Validando o acesso ao internet banking com conta funcionario com login invalido
    Click Element       id:AccountLink
    Input Text          id:uid                          xpto@123
    Input Text          id:passw                        admin
    Click Button        css:input[name="btnSubmit"]
    ${login}            Get WebElement                  id:_ctl0__ctl0_Content_Main_message
    Should Contain      ${login.text}                   Login Failed: We're sorry, but this username or password was not found in our system. Please try again.

Validando o acesso ao internet banking com conta funcionario com login invalido 
    Click Element       id:LoginLink
    Input Text          id:uid                          xpto@123
    Input Text          id:passw                        admin
    Click Button        css:input[name="btnSubmit"]
    ${login}            Get WebElement                  id:_ctl0__ctl0_Content_Main_message
    Should Contain      ${login.text}                   Login Failed: We're sorry, but this username or password was not found in our system. Please try again.

Validando o acesso ao internet banking com conta funcionario com login e senha invalidas
    Click Element       id:AccountLink
    Input Text          id:uid                          xpto@123
    Input Text          id:passw                        aooba
    Click Button        css:input[name="btnSubmit"]
    ${falha}            Get WebElement                  id:_ctl0__ctl0_Content_Main_message
    Should Contain      ${falha.text}                   Login Failed: We're sorry, but this username or password was not found in our system. Please try again.

Validando o acesso ao internet banking com conta funcionario com login e senha invalidas
    Click Element       id:LoginLink
    Input Text          id:uid                          xpto@123
    Input Text          id:passw                        aooba
    Click Button        css:input[name="btnSubmit"]
    ${falha}            Get WebElement                  id:_ctl0__ctl0_Content_Main_message
    Should Contain      ${falha.text}                   Login Failed: We're sorry, but this username or password was not found in our system. Please try again.