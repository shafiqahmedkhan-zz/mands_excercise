Feature: Sign into Amazon.co.uk

  Scenario Outline: Display the list of all audio books in the collection
    Given Amazon.co.uk is open
    When I click login
    And enter valid <username> and <password>
    Then I am logged in
    Examples:
    |username                |password   |
    |aja.sekhar@hotmail.co.uk|test123|
