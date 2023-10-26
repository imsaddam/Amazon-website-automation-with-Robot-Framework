*** Settings ***
Library           SeleniumLibrary
Library    DataDriver    file=${TestData}     sheet_name=Product
Resource          ../Resources/LoginKeyword.robot
Resource        ../Resources/TechnicalKeyword.robot



*** Test Cases ***
Amazon Order     ${Item}
    Open Amazon
    Add items to cart        ${Item}