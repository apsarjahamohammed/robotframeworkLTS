*** Settings ***
Documentation   This suite will handles all the tedt cases related to valid
...     credential test. Test case - TC_OH_2

Resource    ../Resource/Base/CommonFunctionality.resource

Test Setup      Launch Browser
Test Teardown       Close Browser

Test Template       verify Invalid credential Template

*** Test Cases ***
TC1     john    john123     invalid credentials
TC2     peter   peter123     invalid credentials


*** Keywords ***
verify Invalid credential Template
    [Arguments]     ${username}     ${password}     ${expected_error}
    Input Text    id=txtUsername    ${username}
    Input Password    id=txtPassword    ${password}
    Click Element    id=btnLogin
    Element Text Should Be      id=spanMessage    ${expected_error}



