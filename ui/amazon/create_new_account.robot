*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}          https://www.amazon.com/
${BROWSER}      Chrome
${HELLO_SIGN_IN_BUTTON}    //*[@id="nav-link-accountList"]
${START_HERE_BUTTON}    //*[@id="nav-flyout-ya-newCust"]/a
${YOUR_NAME_TEXT_BOX}    //*[@id="ap_customer_name"]
${EMAIL_TEXT_BOX}    //*[@id="ap_email"]
${PASSWORD_TEXT_BOX}    //*[@id="ap_password"]
${RE_ENTER_PASSWORD_TEXT_BOX}    //*[@id="ap_password_check"]
${CREATE_AMAZON_ACCOUNT_BUTTON}    //*[@id="continue"]
${ENTER_OTP_TEXT_BOX}    //input[@name="code"]

*** Test Cases ***
User can create new account in amazon
    [Tags]    CREATE_ACCOUNT
    Navigate to the site
    Go to create user page
    Fill in create account form
    Verify navigated to otp page
    Close current browser

*** Keywords ***
Navigate to the site
    Open Browser    ${URL}    ${BROWSER}

Go to create user page
    Mouse Over    ${HELLO_SIGN_IN_BUTTON}
    Wait Until Element Is Visible    ${START_HERE_BUTTON}
    Click Element    ${START_HERE_BUTTON}

Fill in create account form
    Click Element    ${YOUR_NAME_TEXT_BOX}
    Clear Element Text    ${YOUR_NAME_TEXT_BOX}
    Input Text    ${YOUR_NAME_TEXT_BOX}    Donald
    Click Element    ${EMAIL_TEXT_BOX}
    Clear Element Text    ${EMAIL_TEXT_BOX}
    Input Text    ${EMAIL_TEXT_BOX}    testingrobot@gmail.com
    Click Element    ${PASSWORD_TEXT_BOX}
    Clear Element Text    ${PASSWORD_TEXT_BOX}
    Input Password    ${PASSWORD_TEXT_BOX}    abcxyz@123
    Click Element    ${RE_ENTER_PASSWORD_TEXT_BOX}
    Clear Element Text    ${RE_ENTER_PASSWORD_TEXT_BOX}
    Input Password    ${RE_ENTER_PASSWORD_TEXT_BOX}    abcxyz@123
    Click Element    ${CREATE_AMAZON_ACCOUNT_BUTTON}

Verify navigated to otp page
    Element Should Be Visible    ${ENTER_OTP_TEXT_BOX}

Close current browser
    Close Browser



