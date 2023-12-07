*** Settings ***
Resource    ../locators/NavBarLocators.robot
Resource    ../../configs/BrowserConfiguration.robot
Resource    ../../configs/SeleniumConfiguration.robot
Resource    ../../configs/AutomationConfiguration.robot
Resource    ../../configs/EnvironmentConfiguration.robot

Library     SeleniumLibrary

*** Keywords ***
Navigate ${page}
    [Documentation]     Click navbar item with key name defined in NavBarLocators.robot navbar_items dict
    ${page_item_selector}=      Get NavBar Item Selector ${page}
    Click Element [Arguments] ${page_item_selector}  ${SMALL_RETRY_COUNT}



Configure And Open Browser
    [Documentation]     Open browser then navigate products page

    Open Browser      ${TEST_ENV_URL}   ${BROWSER}
    Set Window Size	    ${WINDOW_WIDTH}     ${WINDOW_HEIGHT}
    Set Selenium Timeout     ${SELENIUM_EXPLICIT_TIMEOUT}
    #Navigate products
    Set Log Level    DEBUG