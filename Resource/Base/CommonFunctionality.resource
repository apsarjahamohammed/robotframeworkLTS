*** Settings ***
Documentation   This file handles browsers configuration, resuable scripts

Library     SeleniumLibrary

*** Variables ***
#global variable
${BROWSER_NAME}     chrome
${URL}      https://opensource-demo.orangehrmlive.com/

*** Keywords ***
Launch Browser
    Open Browser    browser=chrome      executable_path=${EXECDIR}${/}driver${/}chromedriver.exe
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Go To    ${URL}



