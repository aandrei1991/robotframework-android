*** Settings ***
Library     AppiumLibrary
Resource    ../locators/locators.robot
Resource    ../../resources/users.robot
Resource    CommonKeywords.robot

*** Keywords ***
Select Login from Side Menu
    Open Side Menu
    Wait Until Element Is Visible    ${MENU_OPT_LOGIN}
    Click Element    ${MENU_OPT_LOGIN}
    Wait Until Page Contains Element    ${LOGIN_EMAIL_FIELD}

Input Username
    [Arguments]     ${user_email}
    Wait Until Page Contains Element    ${LOGIN_EMAIL_FIELD}
    Input Text    ${LOGIN_EMAIL_FIELD}    ${user_email}

Input Password
    [Arguments]     ${user_password}
    Wait Until Page Contains Element    ${LOGIN_PASSWORD_FIELD}
    Input Text    ${LOGIN_PASSWORD_FIELD}    ${user_password}

Perform Login
    Wait Until Page Contains Element    ${LOGIN_LOGIN_BUTTON}
    Click Element    ${LOGIN_LOGIN_BUTTON}