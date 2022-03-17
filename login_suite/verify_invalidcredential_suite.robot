*** Settings ***
Documentation   This suite will handles all the tedt cases related to valid
...     credential test. Test case - TC_OH_2

Resource    ../Resource/Base/CommonFunctionality.resource


Test Teardown       Close Browser

*** Test Cases ***
verify invalid credential Test
    Launch Browser
    Input Text    id=txtUsername    Apsar
    Input Password    id=txtPassword    admin123
    Click Element    id=btnLogin
    Element Text Should Be    id=spanMessage    Invalid credentials

