*** Settings ***
Documentation   This suite will handles all the tedt cases related to valid
...     credential test. Test case - TC_OH_2

Resource    ../Resource/Base/CommonFunctionality.resource


Test Teardown       Close Browser

*** Test Cases ***
verify valid credential Test
    Launch Browser
    Input Text    id=txtUsername    Admin
    Input Password    id=txtPassword    admin123
    Click Element    id=btnLogin
    Page Should Contain    My Info



