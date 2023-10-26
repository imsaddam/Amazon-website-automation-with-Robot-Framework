*** Settings ***
Library           SeleniumLibrary
Library           DataDriver    TestData/Data.csv    
Resource        ../Resources/TestObjects.robot
Resource          ../Resources/LoginKeyword.robot


Test Template    Add items to cart





*** Keywords ***

Add items to cart
    [Arguments]    ${item}
    Open Amazon
    Input Text    ${search_input}    ${item}
    Click Button    ${submit_search} 
    Wait Until Element Is Visible     ${first_product}
    Click Element    ${first_product}
    Wait Until Element Is Visible     ${add_to_cart} 
    Click Element     ${add_to_cart} 



