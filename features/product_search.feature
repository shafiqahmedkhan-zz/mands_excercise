Feature: Search a product on marks and spencer website

  Scenario Outline: Product search should show results
    Given M&S site is open
    When I search for <item>
    Then there should be more than one search result
    Examples:
    |item    |
    |sofa bed|