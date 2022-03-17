*** Settings ***
Documentation      This suite handles test case related to emergency contact

Resource    ../Resource/Base/CommonFunctionality.resource

Test Setup      Launch Browser And Navigate To URL
Test Teardown      Close Browser

Test Template       Verify Add Emergency Contact Template

*** Test Cases ***
TC1     Admin   admin123    john    brother     787878
TC2     Admin   admin123    sandy   sister      787878

*** Keywords ***
Verify Add Emergency Contact Template
    [Arguments]     ${Username}    ${Password}    ${contact_name}    ${relationship}    ${home_telephone}
    Input Text    id=txtUsername    ${Username}
    Input Password    id=txtPassword    ${Password}
    Click Element    id=btnLogin
    Click Element    id=menu_pim_viewMyDetails
    Click Element    partial link=Emergency Contacts
    Click Element    id=btnAddContact
    Input Text    name=emgcontacts[name]    ${contact_name}
    Input Text    id=emgcontacts_relationship    ${relationship}
    Input Text    id=emgcontacts_homePhone    ${home_telephone}
    Click Element    id=btnSaveEContact
    Table Should Contain    id=emgcontact_list    Sat
    Table Should Contain    id=emgcontact_list    78787