*** Settings ***
Library           SeleniumLibrary
Library           DataDriver    ../TestData/Data.xlsx        sheet_name=Product
Resource          ../Resources/TestObjects.robot
Resource          ../Resources/LoginKeyword.robot







*** Keywords ***
Add items to cart
    [Arguments]    ${Item}
    Wait Until Element Is Visible      ${search_input}
    Input Text    ${search_input}    ${Item}
    Click Button    ${submit_search}
    Wait Until Element Is Visible     ${first_product}
    Click Element    ${first_product}
    Wait Until Element Is Visible     ${add_to_cart}
    Click Element     ${add_to_cart}



