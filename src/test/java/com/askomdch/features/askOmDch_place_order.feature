Feature: AskOmDch Place Order  Feature
#  @smoke
  Scenario Outline: AskOmDch Place Order As a Guest
    Given user is on the homepage
    Then user should be able to click store link
    And user should be able to enter product name "<product_item>" in search field and click search button
    Then user should be able to verify search result "<product_item>"
    And user should be able to see "<product_name>" product item
    And confirm "<product_name>" product item and add to cart
    Then user should be able to see "<product_name>” has been added to your cart." verify message
    And user should be able to click shopping cart link
    And user should be able to verify cart page and product added "<product_name>"
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
      | firstname | lastname | company_name | country                 | street_address1 | street_address2 | city  | state | zip_code | phone  | email           |product_item|product_name        |
      |Bob        |Lee       |Bob INC       |United States (US)       |123 N Palatine rd|apt#321          |Chicago|IL     |60008     |12345678|bobLee@gmail.com |jeans       |Dark Brown Jeans    |
      |Ken        |Bee       |Ken INC       |United States (US)       |358 N Palatine rd|apt#123          |Chicago|NC     |50008     |99999999|KenBee@gmail.com |Shoes       |Blue Shoes          |
      |Sam        |Ree       |Sam INC       |United States (US)       |777 N Palatine rd|apt#777          |Chicago|IN     |55555     |44444444|SamRee@gmail.com |Tshirt      |Blue Tshirt         |
      |Bob        |Lee       |Bob INC       |United States (US)       |123 N Palatine rd|apt#321          |Chicago|IL     |60008     |12345678|bobLee@gmail.com |jeans       |Denim Blue Jeans    |
      |Ken        |Bee       |Ken INC       |United States (US)       |358 N Palatine rd|apt#123          |Chicago|NC     |50008     |99999999|KenBee@gmail.com |Shoes       |Red Shoes           |
      |Sam        |Ree       |Sam INC       |United States (US)       |777 N Palatine rd|apt#777          |Chicago|IN     |55555     |44444444|SamRee@gmail.com |Tshirt      |Green Tshirt        |
      |Bob        |Lee       |Bob INC       |United States (US)       |123 N Palatine rd|apt#321          |Chicago|IL     |60008     |12345678|bobLee@gmail.com |jeans       |Dark Grey Jeans     |
      |Ken        |Bee       |Ken INC       |United States (US)       |358 N Palatine rd|apt#123          |Chicago|NC     |50008     |99999999|KenBee@gmail.com |Bracelet    |Anchor Bracelet     |
      |Bob        |Lee       |Bob INC       |United States (US)       |123 N Palatine rd|apt#321          |Chicago|IL     |60008     |12345678|bobLee@gmail.com |jeans       |Faint Blue Jeans    |
      |Sam        |Ree       |Sam INC       |United States (US)       |777 N Palatine rd|apt#777          |Chicago|IN     |55555     |44444444|SamRee@gmail.com |Bracelet    |Boho Bangle Bracelet|
      |Ken        |Bee       |Ken INC       |United States (US)       |358 N Palatine rd|apt#123          |Chicago|NC     |50008     |99999999|KenBee@gmail.com |jeans       |Basic Blue Jeans    |

  @smoke
  Scenario Outline: AskOmDch Place Order As a Guest and Create Account
    Given user is on the homepage
    Then user should be able to click store link
    And user should be able to enter product name "<product_item>" in search field and click search button
    Then user should be able to verify search result "<product_item>"
    And user should be able to see "<product_name>" product item
    And confirm "<product_name>" product item and add to cart
    Then user should be able to see "<product_name>” has been added to your cart." verify message
    And user should be able to click shopping cart link
    And user should be able to verify cart page and product added "<product_name>"
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
    And user should be able to create account
    And user enters "<username>" for account username
    And  user enters "<password>" for account password
    Then user should be able to click place order button
    And user should be able to see "Thank you. Your order has been received." confirmation message
    Then verify billing information and should see the "<firstname>"  "<lastname>"  "<company_name>"  "<street_address1>"  "<street_address2>"  "<city>"  "<state>"  "<zip_code>" "<phone>" "<email>"
    And verify shipping information the same address and should be see the "<firstname>"  "<lastname>"  "<company_name>"  "<street_address1>"  "<street_address2>"  "<city>"  "<state>"  "<zip_code>"

    Examples:
      |username |password| firstname | lastname | company_name | country                 | street_address1 | street_address2 | city  | state | zip_code | phone  | email           |product_item|product_name        |
      |BobLee6  |password|Bob        |Lee       |Bob INC       |United States (US)       |123 N Palatine rd|apt#321          |Chicago|IL     |60008     |12345678|BobLee6@gmail.com |jeans       |Dark Brown Jeans    |
#      |KenBee   |password|Ken        |Bee       |Ken INC       |United States (US)       |358 N Palatine rd|apt#123          |Chicago|NC     |50008     |99999999|KenBee@gmail.com |Shoes       |Blue Shoes          |
#      |SamRee   |password|Sam        |Ree       |Sam INC       |United States (US)       |777 N Palatine rd|apt#777          |Chicago|IN     |55555     |44444444|SamRee@gmail.com |Tshirt      |Blue Tshirt         |
#      |JonLee   |password|Jon        |Lee       |Jon INC       |United States (US)       |123 N Palatine rd|apt#321          |Chicago|IA     |60008     |12345678|JonLee@gmail.com |jeans       |Denim Blue Jeans    |
#      |RobBee   |password|Rob        |Bee       |Rob INC       |United States (US)       |358 N Palatine rd|apt#123          |Chicago|MS     |50008     |99999999|RobBee@gmail.com |Shoes       |Red Shoes           |
#      |PopRee   |password|Pop        |Ree       |Pop INC       |United States (US)       |777 N Palatine rd|apt#777          |Chicago|NV     |55555     |44444444|PopRee@gmail.com |Tshirt      |Green Tshirt        |
#      |NikLee   |password|Nik        |Lee       |Nik INC       |United States (US)       |123 N Palatine rd|apt#321          |Chicago|NY     |60008     |12345678|NikLee@gmail.com |jeans       |Dark Grey Jeans     |
#      |LolBee   |password|Lol        |Bee       |Lol INC       |United States (US)       |358 N Palatine rd|apt#123          |Chicago|OH     |50008     |99999999|LolBee@gmail.com |Bracelet    |Anchor Bracelet     |
#      |FoxLee   |password|Fox        |Lee       |Fox INC       |United States (US)       |123 N Palatine rd|apt#321          |Chicago|SD     |60008     |12345678|FoxLee@gmail.com |jeans       |Faint Blue Jeans    |
#      |CocRee   |password|Coc        |Ree       |Coc INC       |United States (US)       |777 N Palatine rd|apt#777          |Chicago|WA     |55555     |44444444|CocRee@gmail.com |Bracelet    |Boho Bangle Bracelet|
#      |SokBee   |password|Ken        |Bee       |Sok INC       |United States (US)       |358 N Palatine rd|apt#123          |Chicago|WI     |50008     |99999999|SokBee@gmail.com |jeans       |Basic Blue Jeans    |




