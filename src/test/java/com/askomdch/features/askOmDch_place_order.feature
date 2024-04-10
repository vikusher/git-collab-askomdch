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
    And user enters "<zip_code>" for zipcode
    And user enters "<phone>" for phone
    And user enters "<email>" for email
    Then user should be able to click place order button
    And user should be able to see "Thank you. Your order has been received." confirmation message

    Examples:
      | firstname | lastname | company_name | country                 | street_address1 | street_address2 | city  | state | zip_code | phone  | email           |product_item|product_name        |
      |Bob        |Lee       |Bob INC       |United States (US)       |123 N Palatine rd|apt#321          |Chicago|IL     |60008     |12345678|bobLee@gmail.com |jeans       |Dark Brown Jeans    |
      |Ken        |Bee       |Ken INC       |United States (US)       |358 N Palatine rd|apt#123          |Chicago|NC     |50008     |99999999|KenBee@gmail.com |Shoes       |Blue Shoes          |
#      |Sam        |Ree       |Sam INC       |United States (US)       |777 N Palatine rd|apt#777          |Chicago|IN     |55555     |44444444|SamRee@gmail.com |Tshirt      |Blue Tshirt         |
#      |Bob        |Lee       |Bob INC       |United States (US)       |123 N Palatine rd|apt#321          |Chicago|IL     |60008     |12345678|bobLee@gmail.com |jeans       |Denim Blue Jeans    |
#      |Ken        |Bee       |Ken INC       |United States (US)       |358 N Palatine rd|apt#123          |Chicago|NC     |50008     |99999999|KenBee@gmail.com |Shoes       |Red Shoes           |
#      |Sam        |Ree       |Sam INC       |United States (US)       |777 N Palatine rd|apt#777          |Chicago|IN     |55555     |44444444|SamRee@gmail.com |Tshirt      |Green Tshirt        |
#      |Bob        |Lee       |Bob INC       |United States (US)       |123 N Palatine rd|apt#321          |Chicago|IL     |60008     |12345678|bobLee@gmail.com |jeans       |Dark Grey Jeans     |
#      |Ken        |Bee       |Ken INC       |United States (US)       |358 N Palatine rd|apt#123          |Chicago|NC     |50008     |99999999|KenBee@gmail.com |Bracelet    |Anchor Bracelet     |
#      |Bob        |Lee       |Bob INC       |United States (US)       |123 N Palatine rd|apt#321          |Chicago|IL     |60008     |12345678|bobLee@gmail.com |jeans       |Faint Blue Jeans    |
#      |Sam        |Ree       |Sam INC       |United States (US)       |777 N Palatine rd|apt#777          |Chicago|IN     |55555     |44444444|SamRee@gmail.com |Bracelet    |Boho Bangle Bracelet|
#      |Ken        |Bee       |Ken INC       |United States (US)       |358 N Palatine rd|apt#123          |Chicago|NC     |50008     |99999999|KenBee@gmail.com |jeans       |Basic Blue Jeans    |

#  @smoke
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
    And user enters "<zip_code>" for zipcode
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
      |username |password| firstname | lastname | company_name | country                 | street_address1 | street_address2 | city  | state | zip_code | phone  | email            |product_item|product_name        |
      |BobLee7  |password|Bob        |Lee       |Bob INC       |United States (US)       |123 N Palatine rd|apt#321          |Chicago|IL     |60008     |12345678|BobLee7@gmail.com |jeans       |Dark Brown Jeans    |
      |KenBee1  |password|Ken        |Bee       |Ken INC       |United States (US)       |358 N Palatine rd|apt#123          |Chicago|NC     |50008     |99999999|KenBee1@gmail.com |Shoes       |Blue Shoes          |
      |SamRee1  |password|Sam        |Ree       |Sam INC       |United States (US)       |777 N Palatine rd|apt#777          |Chicago|IN     |55555     |44444444|SamRee1@gmail.com |Tshirt      |Blue Tshirt         |
      |JonLee1  |password|Jon        |Lee       |Jon INC       |United States (US)       |123 N Palatine rd|apt#321          |Chicago|IA     |60008     |12345678|JonLee1@gmail.com |jeans       |Denim Blue Jeans    |
      |RobBee1  |password|Rob        |Bee       |Rob INC       |United States (US)       |358 N Palatine rd|apt#123          |Chicago|MS     |50008     |99999999|RobBee1@gmail.com |Shoes       |Red Shoes           |
      |PopRee1  |password|Pop        |Ree       |Pop INC       |United States (US)       |777 N Palatine rd|apt#777          |Chicago|NV     |55555     |44444444|PopRee1@gmail.com |Tshirt      |Green Tshirt        |
      |NikLee1  |password|Nik        |Lee       |Nik INC       |United States (US)       |123 N Palatine rd|apt#321          |Chicago|NY     |60008     |12345678|NikLee1@gmail.com |jeans       |Dark Grey Jeans     |
      |LolBee1  |password|Lol        |Bee       |Lol INC       |United States (US)       |358 N Palatine rd|apt#123          |Chicago|OH     |50008     |99999999|LolBee1@gmail.com |Bracelet    |Anchor Bracelet     |
      |FoxLee1  |password|Fox        |Lee       |Fox INC       |United States (US)       |123 N Palatine rd|apt#321          |Chicago|SD     |60008     |12345678|FoxLee1@gmail.com |jeans       |Faint Blue Jeans    |
      |CocRee1  |password|Coc        |Ree       |Coc INC       |United States (US)       |777 N Palatine rd|apt#777          |Chicago|WA     |55555     |44444444|CocRee1@gmail.com |Bracelet    |Boho Bangle Bracelet|
      |SokBee1  |password|Ken        |Bee       |Sok INC       |United States (US)       |358 N Palatine rd|apt#123          |Chicago|WI     |50008     |99999999|SokBee1@gmail.com |jeans       |Basic Blue Jeans    |

#  @smoke
  Scenario Outline: AskOmDch Place Order As a Guest with different address for delivery
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
    And user enters "<zip_code>" for zipcode
    And user enters "<phone>" for phone
    And user enters "<email>" for email
    And user should be able to click ship to a different address
    And user enters "<ship_firstname>" for different shipping first name
    And user enters "<ship_lastname>" for different shipping last name
    And user enters "<ship_company_name>" for different shipping company name
    And user selects "<ship_country>" for different shipping country
    And user enters "<ship_street_address1>" for different shipping street address first
    And user enters "<ship_street_address2>" for different shipping street address second
    And user enters "<ship_city>" for different shipping city
    And user selects "<ship_state>" for different shipping state
    And user enters "<ship_zip_code>" for different shipping zip_code
    And user enters "<order_notes>" for order notes
    Then user should be able to click place order button
    And user should be able to see "Thank you. Your order has been received." confirmation message

    Examples:
      | firstname | lastname | company_name | country                 | street_address1 | street_address2 | city  | state | zip_code | phone  | email           |product_item|product_name        |ship_firstname | ship_lastname | ship_company_name | ship_country     | ship_street_address1 | ship_street_address2 | ship_city | ship_state | ship_zip_code | order_notes |
      |Bob        |Lee       |Bob INC       |United States (US)       |123 N Palatine rd|apt#321          |Chicago|IL     |60008     |12345678|bobLee@gmail.com |jeans       |Dark Brown Jeans    |Sara           |Lee            |SaraINC            |United States (US)|145 Main St           |apt#43                |Apex       |NC          |27516          |Thank you    |
      |Ken        |Bee       |Ken INC       |United States (US)       |358 N Palatine rd|apt#123          |Chicago|NC     |50008     |99999999|KenBee@gmail.com |Shoes       |Blue Shoes          |Sara           |Lee            |SaraINC            |United States (US)|141 Main St           |apt#43                |Cary       |NC          |27517          |Thank you    |
      |Sam        |Ree       |Sam INC       |United States (US)       |777 N Palatine rd|apt#777          |Chicago|IN     |55555     |44444444|SamRee@gmail.com |Tshirt      |Blue Tshirt         |Sara           |Lee            |SaraINC            |United States (US)|154 Main St           |apt#43                |Apex       |NC          |27515          |Thank you    |
      |Bob        |Lee       |Bob INC       |United States (US)       |123 N Palatine rd|apt#321          |Chicago|IL     |60008     |12345678|bobLee@gmail.com |jeans       |Denim Blue Jeans    |Sara           |Lee            |SaraINC            |United States (US)|140 Main St           |apt#43                |Apex       |NC          |27512          |Thank you    |
      |Ken        |Bee       |Ken INC       |United States (US)       |358 N Palatine rd|apt#123          |Chicago|NC     |50008     |99999999|KenBee@gmail.com |Shoes       |Red Shoes           |Sara           |Lee            |SaraINC            |United States (US)|141 Main St           |apt#43                |Apex       |NC          |27519          |Thank you    |
      |Sam        |Ree       |Sam INC       |United States (US)       |777 N Palatine rd|apt#777          |Chicago|IN     |55555     |44444444|SamRee@gmail.com |Tshirt      |Green Tshirt        |Sara           |Lee            |SaraINC            |United States (US)|109 Main St           |apt#43                |Apex       |NC          |27987          |Thank you    |
      |Bob        |Lee       |Bob INC       |United States (US)       |123 N Palatine rd|apt#321          |Chicago|IL     |60008     |12345678|bobLee@gmail.com |jeans       |Dark Grey Jeans     |Sara           |Lee            |SaraINC            |United States (US)|101 Main St           |apt#43                |Apex       |NC          |27054          |Thank you    |
      |Ken        |Bee       |Ken INC       |United States (US)       |358 N Palatine rd|apt#123          |Chicago|NC     |50008     |99999999|KenBee@gmail.com |Bracelet    |Anchor Bracelet     |Sara           |Lee            |SaraINC            |United States (US)|980 Main St           |apt#43                |Apex       |NC          |20987          |Thank you    |
      |Bob        |Lee       |Bob INC       |United States (US)       |123 N Palatine rd|apt#321          |Chicago|IL     |60008     |12345678|bobLee@gmail.com |jeans       |Faint Blue Jeans    |Sara           |Lee            |SaraINC            |United States (US)|245 Main St           |apt#49                |Apex       |NC          |27598          |Thank you    |
      |Sam        |Ree       |Sam INC       |United States (US)       |777 N Palatine rd|apt#777          |Chicago|IN     |55555     |44444444|SamRee@gmail.com |Bracelet    |Boho Bangle Bracelet|Sara           |Lee            |SaraINC            |United States (US)|168 Main St           |apt#40                |Apex       |NC          |27505          |Thank you    |
      |Ken        |Bee       |Ken INC       |United States (US)       |358 N Palatine rd|apt#123          |Chicago|NC     |50008     |99999999|KenBee@gmail.com |jeans       |Basic Blue Jeans    |Sara           |Lee            |SaraINC            |United States (US)|192 Main St           |apt#44                |Apex       |NC          |27032          |Thank you    |


      @smoke
  Scenario Outline: AskOmDch Place Order As a Guest with different address for delivery with create an account
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
    And user enters "<zip_code>" for zipcode
    And user enters "<phone>" for phone
    And user enters "<email>" for email
    And user should be able to create account
    And user enters "<username>" for account username
    And  user enters "<password>" for account password
    And user should be able to click ship to a different address
    And user enters "<ship_firstname>" for different shipping first name
    And user enters "<ship_lastname>" for different shipping last name
    And user enters "<ship_company_name>" for different shipping company name
    And user selects "<ship_country>" for different shipping country
    And user enters "<ship_street_address1>" for different shipping street address first
    And user enters "<ship_street_address2>" for different shipping street address second
    And user enters "<ship_city>" for different shipping city
    And user selects "<ship_state>" for different shipping state
    And user enters "<ship_zip_code>" for different shipping zip_code
    And user enters "<order_notes>" for order notes
    Then user should be able to click place order button
    And user should be able to see "Thank you. Your order has been received." confirmation message
    And verify shipping information the same address and should be see the "<ship_firstname>"  "<ship_lastname>"  "<ship_company_name>"  "<ship_street_address1>"  "<ship_street_address2>"  "<ship_city>"  "<ship_state>"  "<ship_zip_code>"

    Examples:
      | firstname | lastname | company_name | country            | street_address1   | street_address2 | city    | state | zip_code | phone    | email              | product_item | product_name         | ship_firstname | ship_lastname | ship_company_name | ship_country       | ship_street_address1 | ship_street_address2 | ship_city | ship_state | ship_zip_code | order_notes | username | password |
      | Bob       | Lee      | Bob INC      | United States (US) | 123 N Palatine rd | apt#321         | Chicago | IL    | 60008    | 12345678 | bobLee15@gmail.com | jeans        | Dark Brown Jeans     | Sara           | Lee           | SaraINC           | United States (US) | 145 Main St          | apt#43               | Apex      | NC         | 27516         | Thank you   | david3   | 112233   |
      | Ken       | Bee      | Ken INC      | United States (US) | 358 N Palatine rd | apt#123         | Chicago | NC    | 50008    | 99999999 | KenBee15@gmail.com | Shoes        | Blue Shoes           | Sara           | Lee           | SaraINC           | United States (US) | 141 Main St          | apt#43               | Cary      | NC         | 27517         | Thank you   | anna3    | 112233   |
      | Sam       | Ree      | Sam INC      | United States (US) | 777 N Palatine rd | apt#777         | Chicago | IN    | 55555    | 44444444 | SamRee11@gmail.com | Tshirt       | Blue Tshirt          | Sara           | Lee           | SaraINC           | United States (US) | 154 Main St          | apt#43               | Apex      | NC         | 27515         | Thank you   | bobby3   | 112233   |
      | Bob       | Lee      | Bob INC      | United States (US) | 123 N Palatine rd | apt#321         | Chicago | IL    | 60008    | 12345678 | bobLee12@gmail.com | jeans        | Denim Blue Jeans     | Sara           | Lee           | SaraINC           | United States (US) | 140 Main St          | apt#43               | Apex      | NC         | 27512         | Thank you   | ece3     | 112233   |
      | Ken       | Bee      | Ken INC      | United States (US) | 358 N Palatine rd | apt#123         | Chicago | NC    | 50008    | 99999999 | KenBee12@gmail.com | Shoes        | Red Shoes            | Sara           | Lee           | SaraINC           | United States (US) | 141 Main St          | apt#43               | Apex      | NC         | 27519         | Thank you   | ahmet3   | 112233   |
      | Sam       | Ree      | Sam INC      | United States (US) | 777 N Palatine rd | apt#777         | Chicago | IN    | 55555    | 44444444 | SamRee12@gmail.com | Tshirt       | Green Tshirt         | Sara           | Lee           | SaraINC           | United States (US) | 109 Main St          | apt#43               | Apex      | NC         | 27987         | Thank you   | senem3   | 112233   |
      | Bob       | Lee      | Bob INC      | United States (US) | 123 N Palatine rd | apt#321         | Chicago | IL    | 60008    | 12345678 | bobLee13@gmail.com | jeans        | Dark Grey Jeans      | Sara           | Lee           | SaraINC           | United States (US) | 101 Main St          | apt#43               | Apex      | NC         | 27054         | Thank you   | hello3   | 112233   |
      | Ken       | Bee      | Ken INC      | United States (US) | 358 N Palatine rd | apt#123         | Chicago | NC    | 50008    | 99999999 | KenBee13@gmail.com | Bracelet     | Anchor Bracelet      | Sara           | Lee           | SaraINC           | United States (US) | 980 Main St          | apt#43               | Apex      | NC         | 20987         | Thank you   | ali3     | 112233   |
      | Bob       | Lee      | Bob INC      | United States (US) | 123 N Palatine rd | apt#321         | Chicago | IL    | 60008    | 12345678 | bobLee14@gmail.com | jeans        | Faint Blue Jeans     | Sara           | Lee           | SaraINC           | United States (US) | 245 Main St          | apt#49               | Apex      | NC         | 27598         | Thank you   | veli3    | 112233   |
      | Sam       | Ree      | Sam INC      | United States (US) | 777 N Palatine rd | apt#777         | Chicago | IN    | 55555    | 44444444 | SamRee13@gmail.com | Bracelet     | Boho Bangle Bracelet | Sara           | Lee           | SaraINC           | United States (US) | 168 Main St          | apt#40               | Apex      | NC         | 27505         | Thank you   | zeynep3  | 112233   |
      | Ken       | Bee      | Ken INC      | United States (US) | 358 N Palatine rd | apt#123         | Chicago | NC    | 50008    | 99999999 | KenBee14@gmail.com | jeans        | Basic Blue Jeans     | Sara           | Lee           | SaraINC           | United States (US) | 192 Main St          | apt#44               | Apex      | NC         | 27032         | Thank you   | ayse3    | 112233   |


