*** Settings ***
Library           SeleniumLibrary
Library           DataDriver    ../TestData/Data.xlsx        sheet_name=Product
Library    Screenshot
Resource          ../Resources/LoginKeyword.robot
Resource          ../Resources/TechnicalKeyword.robot
Resource          ../Resources/TestObjects.robot


Suite Setup     Open Amazon            # Open Amazon.com on the browser 
Suite Teardown  Close Browsers         # Close all browser after operation complete 
Test Template   Add items to cart      # It call the keyword 


*** Test Cases ***
Amazon Order  ${Item}

Checkouts



*** Keywords ***
Add items to cart
    [Arguments]    ${Item}
    Wait Until Element Is Visible      ${search_input}            # Wait for search box to visiable 
    Input Text    ${search_input}    ${Item}                      # Input product name
    Click Button    ${submit_search}                              # Click Search button 
    Wait Until Element Is Visible     ${first_product}            # Wait for search result visible 
    Click Element    ${first_product}                             # Click on 2nd product from search result 
    Wait Until Element Is Visible     ${add_to_cart}
    Take Screenshot
    Click Element     ${add_to_cart}                               # Click at to cart button

Checkouts
    Wait Until Element Is Visible     ${cart_button}
    Take Screenshot
    Click Element    ${cart_button}
    Wait Until Element Is Visible     ${proceed_checkout}
    Take Screenshot
    Click Element   ${proceed_checkout}
