Feature: AskOmDch User Registration Feature with Scenario Outline
#  @smoke
  Scenario Outline: AskOmDch Register New User with Scenario Outline
    Given user is on the homepage
    When user clicks on the account link
    Then user should be navigate to account page
    And  user should be able to see register form header "Register"
    And  user enters "<username>" for username
    And  user enters "<email>" for email address
    And  user enters "<password>" for password
    Then user should be able to see register button and click it
    And user should be able to register successfully "Hello " "<username>" " (not " "<username>" "? Log out)"

    Examples:
      |username     |      email     |password |
      | Jakob9      |jakob9@gmail.com|Jakob123$|
      | Mary9       |mary9@gmail.com |Mary123$ |
      | Elisa9      |elisa9@gmail.com|Elisa123$|
      | Ivan9       |ivan9@gmail.com |Ivan123$ |

# @smoke
  Scenario Outline: AskOmDch Register New User with Scenario Outline and Add Billing and Shipping Address
    Given user is on the homepage
    When user clicks on the account link
    Then user should be navigate to account page
    And  user should be able to see register form header "Register"
    And  user enters "<username>" for username
    And  user enters "<email>" for email address
    And  user enters "<password>" for password
    Then user should be able to see register button and click it
    And user should be able to register successfully "Hello " "<username>" " (not " "<username>" "? Log out)"
    Then user should bee able to click addresses link
    And verify "Billing address" and "Shipping address" header is Displayed
    Then user clicks on add link billing address
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
    And user clicks on save address button
    And verify "Address changed successfully." message
    Then verify completed billing information and should see the "<firstname>"  "<lastname>"  "<company_name>"  "<street_address1>"  "<street_address2>"  "<city>"  "<state>"  "<zip_code>"

    Examples:
      | username | email            | password  | firstname | lastname | company_name | country            | street_address1 | street_address2 | city    | state          | zip_code | phone      |
      | David17 | david17@gmail.com| David123$ | David     | Jacob    | Jacob INC    | United States (US) | 123 Main Street | Apt #123        | Raleigh | NC             | 33515    | 9191199119 |
      | Mary5    |mary5@gmail.com |Mary123$  | David     | Jacob    | Jacob INC    | United States (US) | 123 Main Street | Apt #123        | Raleigh | IL             | 33515    | 9191199119 |
      | Elisa5   |elisa5@gmail.com|Elisa123$ | David     | Jacob    | Jacob INC    | United States (US) | 123 Main Street | Apt #123        | Raleigh | VA             | 33515    | 9191199119 |
      | Ivan5    |ivan5@gmail.com |Ivan123$  | David     | Jacob    | Jacob INC    | United States (US) | 123 Main Street | Apt #123        | Raleigh | CA             | 33515    | 9191199119 |


