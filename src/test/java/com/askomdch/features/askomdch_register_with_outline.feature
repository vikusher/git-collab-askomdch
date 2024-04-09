Feature: AskOmDch User Registration Feature with Scenario Outline
  @smoke
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
      | Jakob1      |jakob1@gmail.com|Jakob123$|
      | Mary1       |mary1@gmail.com |Mary123$ |
      | Elisa1      |elisa1@gmail.com|Elisa123$|
      | Ivan1       |ivan1@gmail.com |Ivan123$ |
