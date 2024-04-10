Feature: AskOmDch Place Order As a Guest Feature
  @smoke
  Scenario Outline: AskOmDch Place Order Steps
    Given user is on the homepage
    Then user should be able to click store link
    And user should be able to enter product name "jeans" in search field and click search button
    Then user should be able to verify search result "jeans"
    And user should be able to see "Dark Brown Jeans" product item
    And confirm "Dark Brown Jeans" product item and add to cart
    Then user should be able to see "Dark Brown Jeans” has been added to your cart." verify message
    And user should be able to click shopping cart link
    And user should be able to verify cart page and product added "Dark Brown Jeans"
    Then user should be able to click proceed to checkout button
    And user should be able to see checkout page
    And user enters "<firstname>" for firstname
    And user enters "<lastname>" for lastname
    And user enters "<company_name>" for company name
    And user selects "<country>" for country
    And user enters "<street_address1>" for street address first
    And user enters "<street_address2>" for street address second
    And user enters "<city>" for city
    And user selects "<state>" for state
    And user enters "<zip_code>" for zip_code
    And user enters "<phone>" for phone
    And user enters "<email>" for email
    Then user should be able to click place order button
    And user should be able to see "Thank you. Your order has been received." confirmation message

    Examples:
      | firstname | lastname | company_name | country                 | street_address1 | street_address2 | city  | state | zip_code | phone  | email           |
      |Bob        |Lee       |Bob INC       |United States (US)       |123 N Palatine rd|apt#321          |Chicago|IL     |60008     |12345678|bobLee@gmail.com |



