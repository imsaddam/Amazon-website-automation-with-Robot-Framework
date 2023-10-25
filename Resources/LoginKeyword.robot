*** Settings ***
Library           SeleniumLibrary


*** Variables ***

${URL}           https://www.amazon.com/
${BROWSER}       chrome
${TestData}      TestData\Data.xlsx


*** Keywords ***
Open Default Browser
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Sleep    2

Close Browsers
    Close All Browsers

Open Login Page
    Click Link    xpath://*[@id="nav-link-accountList"]
    #Go To    ${LOGINURL}

Input Unsername
    [Arguments]    ${username}
    Wait Until Element Is Visible    xpath://*[@id="ap_email"]
    Input Text    xpath://*[@id="ap_email"]    ${username}


Click Continue Button

    Click Element    xpath://*[@id="continue"]

Input Pwd
    [Arguments]    ${password}
    Wait Until Element Is Visible    xpath://*[@id="ap_password"]
    Input Text    //*[@id="ap_password"]    ${password}
    Click Element    xpath://*[@id="signInSubmit"]

Error Message Should Be Displayed
    Page Should Contain    There was a problem
    


