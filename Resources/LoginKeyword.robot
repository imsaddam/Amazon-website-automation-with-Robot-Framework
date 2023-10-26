*** Settings ***
Library           SeleniumLibrary
Resource        ../Resources/TestObjects.robot

*** Variables ***

${URL}           https://www.amazon.com/
${BROWSER}       chrome



*** Keywords ***
Open Amazon
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Sleep    2

Close Browsers
    Close All Browsers

Open Login Page
    Click Link    ${my_account} 
    #Go To    ${LOGINURL}

Input Unsername
    [Arguments]    ${username}
    Wait Until Element Is Visible    ${input_email}
    Input Text    ${input_email}    ${username}


Click Continue Button

    Click Element    ${continue_button}

Input Pwd
    [Arguments]    ${password}
    Wait Until Element Is Visible    ${inptu_pwd}
    Input Text    ${inptu_pwd}    ${password}
    Click Element    ${sign_button}

Error Message Should Be Displayed
    Page Should Contain    There was a problem
    


