*** Settings ***
Resource    ../locators/ProductsLocators.robot
Resource    ../../configs/AutomationConfiguration.robot
Resource    CommonPo.robot
Library     SeleniumLibrary

*** Keywords ***
Search Product ${search_product_value}
    [Documentation]     Send search_product_value in Search input and click submit search
    Element Should Be Visible    ${search_box_input}  ${SMALL_RETRY_COUNT}
    Element Should Be Visible    ${search_submit button}  ${SMALL_RETRY_COUNT}
    Clear Element Text    ${search_box_input}
    Input Text    ${search_box_input}    ${search_product_value}
    Click Element    ${search_submit button}

Add Product ${search_product_value} To Cart
    [Documentation]     Send search_product_value then click add to cart
    ${product_name_selector}=     Get Product Name ${search_product_value} Selector
    Element Should Be Visible    ${product_name_selector}
    ${add_to_cart_button}=      Get Product ${search_product_value} Add To Cart Button Selector
    # Test step teardown
    Navigate products

