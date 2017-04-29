Feature: Search a product on marks and spencer website

  Scenario: Product search should show results
    Given M&S site is open
    When I search for sofa bed
    Then there should be more than one search result

  Scenario: empty search results
    Given M&S site is open
    When I search for continental tyre
    Then I should see no results page
    And I should see a no results message saying "we're sorry we couldn't find anything to match your search"

