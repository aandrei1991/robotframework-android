*** Settings ***
Library     AppiumLibrary
Resource    ../pages/keywords/LoginKeywords.robot
Resource    ../pages/keywords/CommonKeywords.robot
Resource    ../resources/users.robot

*** Test Cases ***
Login and Logout with Active and Inactive Users
    Open Application On Device
    Select Login from Side Menu
    LoginKeywords.Input Username      ${USER1_DETAILS.email}
    LoginKeywords.Input Password      ${USER1_DETAILS.password}
    Perform Login
    Logout Current User
    LoginKeywords.Input Username      ${USER2_DETAILS.email}
    LoginKeywords.Input Password      ${USER2_DETAILS.password}
    Perform Login
    Wait Until Element Is Visible     ${USER_LOCKED_OUT_MESSAGE}
    Close All Applications