*** Variables ***
# navbar items names as key and href as value
&{navbar_items}  home=/  products=/products  cart=/view_cart

*** Keywords ***
Get NavBar Item Selector ${item_name}
    [Documentation]     Get navbar item css selector using navbaritems key as argument . Example: Get NavBar Item Selector   cart
    ${item_href_value}=   Evaluate    $navbar_items.get(${item_name}, ${None})
    ${item_css_selector}=   Set Variable    css= ul.nav > li > a[href=${item_href_value}]
    Return From Keyword    ${item_css_selector}






