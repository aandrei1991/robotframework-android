*** Settings ***
Library     AppiumLibrary
Resource   ../locators/locators.robot
Resource   ../../resources/users.robot

*** Keywords ***
Open Application On Device
    Open Application    http://localhost:4723   platformName=Android    deviceName=emulator-5554    appPackage=com.saucelabs.mydemoapp.rn   appActivity=com.saucelabs.mydemoapp.rn.MainActivity     automationName=Uiautomator2

Open Side Menu
    Wait Until Element Is Visible    ${SIDE_MENU_BUTTON}
    Click Element    ${SIDE_MENU_BUTTON}

Go to Cart
    Wait Until Element Is Visible    ${MAIN_CART_BUTTON}
    Click Element    ${MAIN_CART_BUTTON}

Logout Current User
    Open Side Menu
    Wait Until Element Is Visible    ${MENU_OPT_LOGOUT}
    Click Element    ${MENU_OPT_LOGOUT}
    Wait Until Element Is Visible    ${CONFIRM_LOGOUT_BUTTON}
    Click Element    ${CONFIRM_LOGOUT_BUTTON}
    Wait Until Element Is Visible    ${ALERT_TITLE}
    Element Should Contain Text    ${ALERT_TITLE}    You are successfully logged out.
    Click Element    ${ALERT_OK_BUTTON}