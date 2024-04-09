    Feature: AskOmDch Login Feature

        Background: AskOmDch Login Common Steps
            Given user is on the home page
            When  user clicks on account link
            Then  user should be able to see account page

    #    @regression
        Scenario: AskOmDch User Login Positive Uses Username Without Remember Me Checkbox
            When  user enters valid "vikusher1" and "123Ask" for login and clicks on login button
            And   user should be able to login successfully
            Then  user should be able to see "From your account dashboard you can view your recent orders, manage your shipping and billing addresses, and edit your password and account details." message

    #    @regression
        Scenario: AskOmDch User Login Positive Uses Email Without Remember Me Checkbox
            When  user enters valid "vikusher@gmail.com" and "123Ask" for login and clicks on login button
            And   user should be able to login successfully
            Then  user should be able to see "From your account dashboard you can view your recent orders, manage your shipping and billing addresses, and edit your password and account details." message
    #    @regression
        Scenario: AskOmDch User Login Positive With Remember Me Checkbox
            When  user enters valid "vikusher1" and "123Ask" for login
            And   user checks remember me checkbox
            And   clicks on login button
            Then  user should be able to see "From your account dashboard you can view your recent orders, manage your shipping and billing addresses, and edit your password and account details." message


#        @regression
        Scenario: AskOmDch User Login Negative not Registered User uses email
            When  user enters valid "vikush@gmail.com" and "123Ask" for login and clicks on login button
            Then  user should be able to see "Unknown email address. Check again or try your username."
        @regression
        Scenario: AskOmDch User Login Negative not Registered User uses user name
            When  user enters valid "vikush" and "123Ask" for login and clicks on login button
            Then  user should be able to see "Error: The username " "vikush" " is not registered on this site. If you are unsure of your username, try your email address instead."


        Scenario: AskOmDch User Login Negative not Correct Username Correct Password
        Scenario: AskOmDch User Login Negative not Correct Email Correct Password
        Scenario: AskOmDch User Login Negative not Correct Password Correct Username
        Scenario: AskOmDch User Login Negative not Correct Password Correct Email
        Scenario: AskOmDch User Login Negative Empty Username/Email
        Scenario: AskOmDch User Login Negative Empty Password