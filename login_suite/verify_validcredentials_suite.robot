*** Settings ***
Documentation      This suite will handles all the test cases related to valid
...     credential test for orangehrm. Test case - TC_OH_2
Resource      ../Resource/Base/CommonFunctionality.resource
Resource    ../Resource/Pages/LoginPage.resource

Test Setup      Launch Browser And Navigate To URL
Test Teardown      Close Browser

*** Test Cases ***
Verify Valid Credential Test
    
    Enter Username    Admin
    Enter password    admin123
    Input Password    id=txtPassword    admin123
    Click Element    id=btnLogin
    Page Should Contain    My Info
    Capture Page Screenshot



