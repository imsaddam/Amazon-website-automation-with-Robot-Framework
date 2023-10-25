*** Settings ***
Library           SeleniumLibrary
Resource          ../Resources/LoginKeyword.robot

*** Variables ***
${username}        test@gmail.com
${password}        12345

*** Test Cases ***
Open Amazon Login Page
    Open Default Browser
    Open Login Page
    Input Unsername    ${username}
    Click Continue Button
    Input Pwd         ${password}
    Close Browsers
    