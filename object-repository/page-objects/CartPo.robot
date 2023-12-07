*** Settings ***
Resource    ../locators/CartLocators.robot

Library     SeleniumLibrary

*** Keywords ***
Check Product ${product_name} Exists And Visible In Cart
    [Documentation]     check if product added in cart
    ${product_name_column}=     Get Product ${product_name} Name Column Selector
    Element Should Be Visible    ${product_name_column}

Assert Products Count in Cart Equals To ${expected_added_products_count}
    [Documentation]     check count of added products in cart
    ${products_count_in_card}=      Get Element Count    ${product_rows_selector}
    ${expected_added_products_count_to_int}=    Convert To Integer    ${expected_added_products_count}
    Should Be True    ${products_count_in_card}==${expected_added_products_count_to_int}