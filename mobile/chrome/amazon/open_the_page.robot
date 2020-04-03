*** Settings ***
Library    AppiumLibrary
Library    SeleniumLibrary
Documentation    Suite description


*** Variables ***
${URL}          https://www.amazon.com/


*** Test Cases ***
Test title
    [Tags]    CREATE A NEW ACCOUNT IN AMAZONE
    Open Chrome Browser
    Navigate to the site
    Quit Chrome Browser

*** Keywords ***
Open Chrome Browser
    open application    http://localhost:4723/wd/hub    platformName=Android    platformVersion=10    deviceName='Galaxy A51'    browserName=Chrome    chromedriverExecutable=C:\\webdriver\\chromedriver.exe

Navigate to the site
    go to url    ${URL}

Quit Chrome Browser
    close application
