*** Settings ***
Documentation   This suite will handles all the tedt cases related to valid
...     credential test. Test case - TC_OH_2

Resource    ../Resource/Base/CommonFunctionality.resource

Task Setup          Launch Browser
Test Teardown       Close Browser

*** Test Cases ***
verify valid credential Test
    Input Text    id=txtUsername    Admin
    Input Password    id=txtPassword    admin123
    Click Element    id=btnLogin
    Page Should Contain    My Info



