*** Variables ***
${product_rows_selector}    css=tbody > tr

*** Keywords ***

Get Product ${product_name} Name Column Selector
    [Documentation]    Find product Name column in cart selector
    ${product_name_column}=     Set Variable    xpath=//tbody/tr/td/a[contains(lower-case(text()),lower-case(${product_name}))]
    Return From Keyword     ${product_name_column}