*** Settings ***
Library     AppiumLibrary

*** Variables ***
#*** Home Page ***
${SIDE_MENU_BUTTON}             //android.view.ViewGroup[contains(@content-desc,"open menu")]
${CONFIRM_LOGOUT_BUTTON}        //android.widget.Button[contains(@text, "LOG OUT")]
${ALERT_TITLE}                  id=android:id/alertTitle
${ALERT_OK_BUTTON}              //android.widget.Button[contains(@text, "OK")]
${MAIN_CART_BUTTON}             //android.view.ViewGroup[contains(@text,"cart badge")]
${MAIN_SORT_BUTTON}             //android.view.ViewGroup[contains(@text,"sort button")]

#*** Side Menu ***
${MENU_OPT_LOGIN}           //android.view.ViewGroup[contains(@content-desc,"menu item log in")]
${MENU_OPT_LOGOUT}          //android.view.ViewGroup[contains(@content-desc,"menu item log out")]

#*** Login Page ***
${LOGIN_EMAIL_FIELD}        //android.widget.EditText[contains(@content-desc,"Username input field")]
${LOGIN_PASSWORD_FIELD}     //android.widget.EditText[contains(@content-desc,"Password input field")]
${LOGIN_LOGIN_BUTTON}       //android.view.ViewGroup[contains(@content-desc,"Login button")]
${USER_LOCKED_OUT_MESSAGE}  //android.widget.TextView[contains(@text, "Sorry, this user has been locked out.")]

#*** Catalog Page ***
${CATALOG_HOME_TEXT}        //android.widget.TextView[contains(@text, "Products")]