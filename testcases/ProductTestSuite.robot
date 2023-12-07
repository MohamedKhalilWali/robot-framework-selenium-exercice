*** Settings ***
Resource    ../object-repository/page-objects/CommonPo.robot
Resource    ../object-repository/page-objects/CartPo.robot
Resource    ../object-repository/page-objects/ProductsPo.robot
Resource    ../object-repository/TestData/ProductsTestData.robot
Library     SeleniumLibrary

*** Variables ***

*** Test Cases ***

Test Add Products To Cart
    [Documentation]     ...    Test Preconditions:
                        ...    1. Launch browser
                        ...    Test Body
                        ...    2. Navigate to page 'http://automationexercise.com'
                        ...    3. Navigate to page 'Products'
                        ...    4. Verify if search bar is visible
                        ...    5. write 'men tshirt'
                        ...    6. Click on 'search button'
                        ...    7. Verify 'men tshirt' is visible
                        ...    8. Add product to cart
                        ...    9. Add a 'blue top' second item to the cart
                        ...    10. Click on 'Cart' button
                        ...    11. verify that product are visible in cart
                        ...    12. verify that the sum of the product values is correct
                        ...    Teardown : Close browser
    [Setup]     Configure And Open Browser
    [Teardown]  Close All Browsers

    Given   Navigate products
    When    Add Product ${men_tshirt_product_name} To Cart
    And     Add Product ${blue_top_product_name} To Cart
    Then    Navigate cart
    And     Check Product ${men_tshirt_product_name} Exists And Visible In Cart
    And     Check Product ${blue_top_product_name} Exists And Visible In Cart
    And     Assert Products Count in Cart Equals To 2
