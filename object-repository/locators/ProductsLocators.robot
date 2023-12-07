*** Variables ***
${search_box_input}     id=search_product
${search_submit button}     id=submit_search
${add_to_cart}      css=a.add-to-cart

*** Keywords ***

Get Product Name ${product_name} Selector
    ${product_name_selector}=   Set Variable    xpath=//a[@class='add_to_cart']/preceding-sibling::p[contains(lower-case(text()),lower-case(${product_name}))]
    Return From Keyword    ${product_name_selector}

Get Product ${product_name} Add To Cart Button Selector
    ${add_to_selector}=   Set Variable    xpath=//p[contains(lower-case(text()),lower-case(${product_name}))]/following-sibling-sibling::a[@class='add_to_cart']]
    Return From Keyword    ${add_to_selector}

