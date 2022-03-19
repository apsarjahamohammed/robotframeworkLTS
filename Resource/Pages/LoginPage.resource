*** Settings ***
Documentation   This file handles all operation in the login page

Resource    ../Base/CommonFunctionality.resource

*** Variables ***
${USERNAME_LOCATOR}     id=txtUsername
${PASSWORD_LOCATOR}     id=txtPassword

*** Keywords ***
Enter Username
    [Arguments]     ${username}
    Input Text    ${USERNAME_LOCATOR}   ${username}

Enter password
    [Arguments]     ${password}
    Input Password    ${PASSWORD_LOCATOR}    ${password}

