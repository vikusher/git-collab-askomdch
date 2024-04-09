    Feature: AskOmDch Login Feature

        Background: AskOmDch Login Common Steps
            Given user is on the home page
            When  user clicks on account link
            Then  user should be able to see account page

        @regression
        Scenario: AskOmDch User Login Positive Uses Username Without Remember Me Checkbox
            When  user enters valid "vikusher1" and "123Ask" for login and clicks on login button
            And   user should be able to login successfully
            Then  user should be able to see "From your account dashboard you can view your recent orders, manage your shipping and billing addresses, and edit your password and account details." message

        @regression
        Scenario: AskOmDch User Login Positive Uses Email Without Remember Me Checkbox
            When  user enters valid "vikusher@gmail.com" and "123Ask" for login and clicks on login button
            And   user should be able to login successfully
            Then  user should be able to see "From your account dashboard you can view your recent orders, manage your shipping and billing addresses, and edit your password and account details." message
        @regression
        Scenario: AskOmDch User Login Positive With Remember Me Checkbox
            When  user enters valid "vikusher1" and "123Ask" for login
            And   user checks remember me checkbox
            And   clicks on login button
            Then  user should be able to see "From your account dashboard you can view your recent orders, manage your shipping and billing addresses, and edit your password and account details." message


        @regression
        Scenario: AskOmDch User Login Negative not Registered User uses email
            When  user enters valid "vikush@gmail.com" and "123Ask" for login and clicks on login button
            Then  user should be able to see "Unknown email address. Check again or try your username."
        @regression
        Scenario: AskOmDch User Login Negative not Registered User uses user name
            When  user enters valid "vikush" and "123Ask" for login and clicks on login button
            Then  user should be able to see "Error: The username " "vikush" " is not registered on this site. If you are unsure of your username, try your email address instead."

        @regression
        Scenario: AskOmDch User Login Negative not Valid Username Correct Password
          When  user enters not valid username or email "vikusher2" and correct password "123Ask" for login and clicks on login button
          Then  user should be able to see "Error: The username " "vikusher2" " is not registered on this site. If you are unsure of your username, try your email address instead."

        @regression
        Scenario: AskOmDch User Login Negative not Valid Email Correct Password
          When  user enters not valid username or email "vikush@gmail.com" and correct password "123Ask" for login and clicks on login button
          Then  user should be able to see "Unknown email address. Check again or try your username."

        @regression
        Scenario: AskOmDch User Login Negative not Correct Password Correct Username
          When  user enters valid "vikusher1" and "123Ask!!!" for login and clicks on login button
          Then  user should be able to see "Error: The password you entered for the username " "vikusher1" " is incorrect. Lost your password?"

       @regression
        Scenario: AskOmDch User Login Negative not Correct Password Correct Email
          When  user enters valid "vikusher@gmail.com" and "123Ask!!!" for login and clicks on login button
          Then  user should be able to see "Error: The password you entered for the email address " "vikusher@gmail.com" " is incorrect. Lost your password?"

        @regression
        Scenario: AskOmDch User Login Negative Empty Username/Email
          When username or email field is blank and valid "123Ask" password
          Then  user should be able to see "Error: Username is required."

        @regression
        Scenario: AskOmDch User Login Negative Empty Password
          When  user enters valid username "vikusher1" and password field is blank
          Then  user should be able to see "Error: The password field is empty."

        Scenario: AskOmDch User Reset Password With Registered username

        Scenario: AskOmDch User Reset Password With Not Registered username

        Scenario: AskOmDch User Reset Password With Empty username

