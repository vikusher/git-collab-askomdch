Feature: Askomdch Login Feature



    Scenario: Askomdch User Login Positive Without Remember Me Checkbox
        Given user is on the home page
        When  user clicks on account link
        Then  user should be able to see account page
        When  user enters valid "vikusher1" and "123Ask" for login and clicks on login button
        And   user should be able to login successfully
#        Then  user should be able to see "From your account dashboard you can view your recent orders, manage your shipping and billing addresses, and edit your password and account details." message


#    Scenario: Askomdch User Login Positive With Remember Me Checkbox
#        Given user is on the home page
#        When  user clicks on account link
#        Then  user should be able to see account page
#        When  user enters valid username and password for login
#        And   user checks remember me checkbox
#        And   clicks on login button
#        Then  user should be able to login successfully

#    Scenario: Askomdch User Login Positive Without Remember Me Checkbox
#        Given user is on the home page
#        When  user clicks on account link
#        Then  user should be able to see account page
#        When  user enters valid username and password for login and clicks on login button
#        Then  user should be able to login successfully