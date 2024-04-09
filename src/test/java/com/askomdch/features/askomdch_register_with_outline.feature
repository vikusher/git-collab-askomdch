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
      | Jakob3      |jakob3@gmail.com|Jakob123$|
      | Mary3       |mary3@gmail.com |Mary123$ |
      | Elisa3      |elisa3@gmail.com|Elisa123$|
      | Ivan3       |ivan3@gmail.com |Ivan123$ |

  @smoke
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

    Examples:
      |username     |      email     |password |
      | David1      |david1@gmail.com|David123$|
#      | Mary3       |mary3@gmail.com |Mary123$ |
#      | Elisa3      |elisa3@gmail.com|Elisa123$|
#      | Ivan3       |ivan3@gmail.com |Ivan123$ |
