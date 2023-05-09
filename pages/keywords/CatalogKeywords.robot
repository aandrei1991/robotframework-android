*** Settings ***
Library     AppiumLibrary
Resource    ../locators/locators.robot
Resource    ../../resources/users.robot
Resource    CommonKeywords.robot

*** Keywords ***
Select Catalog from Side Menu
    Open Side Menu
    Wait Until Element Is Visible    ${MENU_OPT_CATALOG}
    Click Element    ${ENU_OPT_CATALOG}
    Wait Until Page Contains Element    ${CATALOG_HOME_TEXT}

Click on Sort
    Wait Until Element Is Visible    ${MAIN_SORT_BUTTON}
    Click Element    ${MAIN_SORT_BUTTON}