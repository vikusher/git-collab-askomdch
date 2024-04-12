Feature: AskOmDch Place Order  Feature
  @smoke
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
    And user clicks on payment method randomly
    Then user should be able to click place order button
    And user should be able to see confirmation message for payment method in order confirmation
    And user should be able to see "Thank you. Your order has been received." confirmation message

    Examples:
      |	    email          	|	 firstname 	|	 lastname 	|	 company_name 	|	 country                 	|	 street_address1 	|	 street_address2 	|	 city  	|	 state 	|	 zip_code 	|	 phone  	|	product_item	|	product_name            |
      |	MaxDar1gmail.com 	|	Maximilian	|	Darden	    |	MaxDardenINC	|	United States (US)       	|	123 N Palatine rd	|	apt#321          	|	Chicago	|	IL     	|	60008	    |	12345678	|	jeans       	|	Dark Brown Jeans    	|
      |	LydMer1gmail.com 	|	Lydia	    |	Merchant	|	LydMerchantINC	|	United States (US)       	|	358 N Palatine rd	|	apt#123          	|	Chicago	|	NC     	|	50008	    |	12345679	|	Shoes       	|	Blue Shoes          	|
      |	DreMcL1gmail.com 	|	Drew	    |	McLain	    |	DreMcLainINC	|	United States (US)       	|	777 N Palatine rd	|	apt#777          	|	Chicago	|	IN     	|	55555	    |	12345680	|	Tshirt      	|	Blue Tshirt         	|
      |	KelGol1gmail.com 	|	Kelton	    |	Gold	    |	KelGoldINC	    |	United States (US)       	|	123 N Palatine rd	|	apt#321          	|	Chicago	|	IA     	|	60008	    |	12345681	|	jeans       	|	Denim Blue Jeans    	|
      |	AleBau1gmail.com 	|	Alessandra	|	Baugh	    |	AleBaughINC	    |	United States (US)       	|	358 N Palatine rd	|	apt#123          	|	Chicago	|	MS     	|	50008	    |	12345682	|	Shoes       	|	Red Shoes           	|
      |	CarLei1gmail.com 	|	Carson	    |	Leighton	|	CarLeightonINC	|	United States (US)       	|	777 N Palatine rd	|	apt#777          	|	Chicago	|	NV     	|	55555	    |	12345683	|	Tshirt      	|	Green Tshirt        	|
      |	AlvMar1gmail.com 	|	Alvin	    |	March	    |	AlvMarchINC	    |	United States (US)       	|	123 N Palatine rd	|	apt#321          	|	Chicago	|	NY     	|	60008	    |	12345684	|	jeans       	|	Dark Grey Jeans     	|
      |	EmmZim1gmail.com 	|	Emmanuel	|	Zimmerman	|	EmmZimmermanINC	|	United States (US)       	|	358 N Palatine rd	|	apt#123          	|	Chicago	|	OH     	|	50008	    |	12345685	|	Bracelet    	|	Anchor Bracelet     	|
      |	TraRam1gmail.com 	|	Tracy	    |	Ramon	    |	TraRamonINC	    |	United States (US)       	|	123 N Palatine rd	|	apt#321          	|	Chicago	|	SD     	|	60008	    |	12345686	|	jeans       	|	Faint Blue Jeans    	|
      |	RonBri1gmail.com 	|	Ronaldo	    |	Briones	    |	RonBrionesINC	|	United States (US)       	|	777 N Palatine rd	|	apt#777          	|	Chicago	|	WA     	|	55555	    |	12345687	|	Bracelet    	|	Boho Bangle Bracelet	|
      |	IzaLan1gmail.com 	|	Izaiah	    |	Lange	    |	IzaLangeINC	    |	United States (US)       	|	358 N Palatine rd	|	apt#123          	|	Chicago	|	WI     	|	50008	    |	12345688	|	jeans       	|	Basic Blue Jeans    	|

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
    And user enters "<zip_code>" for zipcode
    And user enters "<phone>" for phone
    And user enters "<email>" for email
    And user clicks on payment method randomly
    And user should be able to create account
    And user enters "<username>" for account username
    And  user enters "<password>" for account password
    Then user should be able to click place order button
    And user should be able to see "Thank you. Your order has been received." confirmation message
    And user should be able to see confirmation "<email>" address
    And user should be able to see confirmation message for payment method in order confirmation
    Then verify billing information and should see the "<firstname>"  "<lastname>"  "<company_name>"  "<street_address1>"  "<street_address2>"  "<city>"  "<state>"  "<zip_code>" "<phone>" "<email>"
    And verify shipping information the same address and should be see the "<firstname>"  "<lastname>"  "<company_name>"  "<street_address1>"  "<street_address2>"  "<city>"  "<state>"  "<zip_code>"

    Examples:

  |	username|	password	|	 email          	|	 firstname 	|	 lastname 	|	 company_name 	|	 country                 	|	 street_address1 	| street_address2 		| city  	|	 state 	|	zip_code| 	 phone  	|	product_item	|	product_name        	|
  |	MaxDar1	|	password	|	MaxDar1@gmail.com 	|	Maximilian	|	Darden	    |	MaxDardenINC	|	United States (US)       	|	123 N Palatine rd	|	apt#321          	|	Chicago	|	IL     	|	60008	|	12345678	|	jeans       	|	Dark Brown Jeans    	|
  |	LydMer1	|	password	|	LydMer1@gmail.com 	|	Lydia	    |	Merchant	|	LydMerchantINC	|	United States (US)       	|	358 N Palatine rd	|	apt#123          	|	Chicago	|	NC     	|	50008	|	12345679	|	Shoes       	|	Blue Shoes          	|
  |	DreMcL1	|	password	|	DreMcL1@gmail.com 	|	Drew	    |	McLain	    |	DreMcLainINC	|	United States (US)       	|	777 N Palatine rd	|	apt#777          	|	Chicago	|	IN     	|	55555	|	12345680	|	Tshirt      	|	Blue Tshirt         	|
  |	KelGol1	|	password	|	KelGol1@gmail.com 	|	Kelton	    |	Gold	    |	KelGoldINC	    |	United States (US)       	|	123 N Palatine rd	|	apt#321          	|	Chicago	|	IA     	|	60008	|	12345681	|	jeans       	|	Denim Blue Jeans    	|
  |	AleBau1	|	password	|	AleBau1@gmail.com 	|	Alessandra	|	Baugh	    |	AleBaughINC	    |	United States (US)       	|	358 N Palatine rd	|	apt#123          	|	Chicago	|	MS     	|	50008	|	12345682	|	Shoes       	|	Red Shoes           	|
  |	CarLei1	|	password	|	CarLei1@gmail.com 	|	Carson	    |	Leighton	|	CarLeightonINC	|	United States (US)       	|	777 N Palatine rd	|	apt#777          	|	Chicago	|	NV     	|	55555	|	12345683	|	Tshirt      	|	Green Tshirt        	|
  |	AlvMar1	|	password	|	AlvMar1@gmail.com 	|	Alvin	    |	March	    |	AlvMarchINC	    |	United States (US)       	|	123 N Palatine rd	|	apt#321          	|	Chicago	|	NY     	|	60008	|	12345684	|	jeans       	|	Dark Grey Jeans     	|
  |	EmmZim1	|	password	|	EmmZim1@gmail.com 	|	Emmanuel	|	Zimmerman	|	EmmZimmermanINC	|	United States (US)       	|	358 N Palatine rd	|	apt#123          	|	Chicago	|	OH     	|	50008	|	12345685	|	Bracelet    	|	Anchor Bracelet     	|
  |	TraRam1	|	password	|	TraRam1@gmail.com 	|	Tracy	    |	Ramon	    |	TraRamonINC	    |	United States (US)       	|	123 N Palatine rd	|	apt#321          	|	Chicago	|	SD     	|	60008	|	12345686	|	jeans       	|	Faint Blue Jeans    	|
  |	RonBri1	|	password	|	RonBri1@gmail.com 	|	Ronaldo	    |	Briones	    |	RonBrionesINC	|	United States (US)       	|	777 N Palatine rd	|	apt#777          	|	Chicago	|	WA     	|	55555	|	12345687	|	Bracelet    	|	Boho Bangle Bracelet	|
  |	IzaLan1	|	password	|	IzaLan1@gmail.com 	|	Izaiah	    |	Lange	    |	IzaLangeINC	    |	United States (US)       	|	358 N Palatine rd	|	apt#123          	|	Chicago	|	WI     	|	50008	|	12345688	|	jeans       	|	Basic Blue Jeans    	|



  @smoke
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
    And user clicks on payment method randomly
    Then user should be able to click place order button
    And user should be able to see "Thank you. Your order has been received." confirmation message
    And user should be able to see confirmation message for payment method in order confirmation

    Examples:
      | firstname | lastname | company_name | country                 | street_address1 | street_address2 | city  | state | zip_code | phone  | email           |product_item|product_name        |ship_firstname | ship_lastname | ship_company_name | ship_country     | ship_street_address1 | ship_street_address2 | ship_city | ship_state | ship_zip_code | order_notes |
      |Bob        |Lee       |Bob INC       |United States (US)       |123 N Palatine rd|apt#321          |Chicago|IL     |60008     |12345678|bobLee@gmail.com |jeans       |Dark Brown Jeans    |Sara           |Lee            |SaraINC            |United States (US)|145 Main St           |apt#43                |Apex       |NC          |27516          |Thank you    |
#      |Ken        |Bee       |Ken INC       |United States (US)       |358 N Palatine rd|apt#123          |Chicago|NC     |50008     |99999999|KenBee@gmail.com |Shoes       |Blue Shoes          |Sara           |Lee            |SaraINC            |United States (US)|141 Main St           |apt#43                |Cary       |NC          |27517          |Thank you    |
#      |Sam        |Ree       |Sam INC       |United States (US)       |777 N Palatine rd|apt#777          |Chicago|IN     |55555     |44444444|SamRee@gmail.com |Tshirt      |Blue Tshirt         |Sara           |Lee            |SaraINC            |United States (US)|154 Main St           |apt#43                |Apex       |NC          |27515          |Thank you    |
#      |Bob        |Lee       |Bob INC       |United States (US)       |123 N Palatine rd|apt#321          |Chicago|IL     |60008     |12345678|bobLee@gmail.com |jeans       |Denim Blue Jeans    |Sara           |Lee            |SaraINC            |United States (US)|140 Main St           |apt#43                |Apex       |NC          |27512          |Thank you    |
#      |Ken        |Bee       |Ken INC       |United States (US)       |358 N Palatine rd|apt#123          |Chicago|NC     |50008     |99999999|KenBee@gmail.com |Shoes       |Red Shoes           |Sara           |Lee            |SaraINC            |United States (US)|141 Main St           |apt#43                |Apex       |NC          |27519          |Thank you    |
#      |Sam        |Ree       |Sam INC       |United States (US)       |777 N Palatine rd|apt#777          |Chicago|IN     |55555     |44444444|SamRee@gmail.com |Tshirt      |Green Tshirt        |Sara           |Lee            |SaraINC            |United States (US)|109 Main St           |apt#43                |Apex       |NC          |27987          |Thank you    |
#      |Bob        |Lee       |Bob INC       |United States (US)       |123 N Palatine rd|apt#321          |Chicago|IL     |60008     |12345678|bobLee@gmail.com |jeans       |Dark Grey Jeans     |Sara           |Lee            |SaraINC            |United States (US)|101 Main St           |apt#43                |Apex       |NC          |27054          |Thank you    |
#      |Ken        |Bee       |Ken INC       |United States (US)       |358 N Palatine rd|apt#123          |Chicago|NC     |50008     |99999999|KenBee@gmail.com |Bracelet    |Anchor Bracelet     |Sara           |Lee            |SaraINC            |United States (US)|980 Main St           |apt#43                |Apex       |NC          |20987          |Thank you    |
#      |Bob        |Lee       |Bob INC       |United States (US)       |123 N Palatine rd|apt#321          |Chicago|IL     |60008     |12345678|bobLee@gmail.com |jeans       |Faint Blue Jeans    |Sara           |Lee            |SaraINC            |United States (US)|245 Main St           |apt#49                |Apex       |NC          |27598          |Thank you    |
#      |Sam        |Ree       |Sam INC       |United States (US)       |777 N Palatine rd|apt#777          |Chicago|IN     |55555     |44444444|SamRee@gmail.com |Bracelet    |Boho Bangle Bracelet|Sara           |Lee            |SaraINC            |United States (US)|168 Main St           |apt#40                |Apex       |NC          |27505          |Thank you    |
#      |Ken        |Bee       |Ken INC       |United States (US)       |358 N Palatine rd|apt#123          |Chicago|NC     |50008     |99999999|KenBee@gmail.com |jeans       |Basic Blue Jeans    |Sara           |Lee            |SaraINC            |United States (US)|192 Main St           |apt#44                |Apex       |NC          |27032          |Thank you    |


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
    And user clicks on payment method randomly
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
    And user should be able to see confirmation "<email>" address
    And user should be able to see confirmation message for payment method in order confirmation
    And verify shipping information the same address and should be see the "<ship_firstname>"  "<ship_lastname>"  "<ship_company_name>"  "<ship_street_address1>"  "<ship_street_address2>"  "<ship_city>"  "<ship_state>"  "<ship_zip_code>"

    Examples:
      | username        |	 email                    | password  | firstname |lastname     | company_name      | country                   | street_address1   	| street_address2	    |  city    	    |	 state 	| zip_code 	| phone    	    |	 product_item 	| product_name           	| ship_firstname 	    | ship_lastname     | ship_company_name     | ship_country       	    |  ship_street_address1 	| ship_street_address2	    |  ship_city 	| ship_state  |	 ship_zip_code | order_notes        |
      |	MilMendoza1	    |	MilMendoza1@gmail.com	  |	112233	|	Miles	|	Mendoza 	|	 Bob INC      	|	 United States (US) 	|	 123 N Palatine rd 	|	 apt#321         	|	 Chicago 	|	 IL    	|	60008	|	12345678	|	 jeans        	|	 Dark Brown Jeans     	|	 Sara           	|	 Lee           	|	 SaraINC           	|	 United States (US) 	|	 145 Main St          	|	 apt#43               	|	 Apex      	|	 NC       |	27516	       |	 Thank you   	|
      |	EveAdamson1	    |	EveAdamson1@gmail.com	  |	112233	|	Everardo|	Adamson	    |	 Ken INC      	|	 United States (US) 	|	 358 N Palatine rd 	|	 apt#123         	|	 Chicago 	|	 NC    	|	50008	|	99999999	|	 Shoes        	|	 Blue Shoes           	|	 Sara           	|	 Lee           	|	 SaraINC           	|	 United States (US) 	|	 141 Main St          	|	 apt#43               	|	 Cary      	|	 NC   	  |	27517	       |	 Thank you   	|
      |	RebDowning1	    |	RebDowning1@gmail.com	  |	112233	|	Rebekah	|	Downing	    |	 Sam INC      	|	 United States (US) 	|	 777 N Palatine rd 	|	 apt#777         	|	 Chicago 	|	 IN    	|	55555	|	44444444	|	 Tshirt       	|	 Blue Tshirt          	|	 Sara           	|	 Lee           	|	 SaraINC           	|	 United States (US) 	|	 154 Main St          	|	 apt#43               	|	 Apex      	|	 NC       |	27515	       |	 Thank you   	|
      |	ChaTaggart1	    |	ChaTaggart1@gmail.com	  |	112233	|	Chaz	|	Taggart	    |	 Bob INC      	|	 United States (US) 	|	 123 N Palatine rd 	|	 apt#321         	|	 Chicago 	|	 IL    	|	60008	|	12345678	|	 jeans        	|	 Denim Blue Jeans     	|	 Sara           	|	 Lee           	|	 SaraINC           	|	 United States (US) 	|	 140 Main St          	|	 apt#43               	|	 Apex      	|	 NC       |	27512	       |	 Thank you   	|
      |	DesWeatherford1	|	DesWeatherford1@gmail.com |	112233	|	Desirae	|	Weatherford	|	 Ken INC      	|	 United States (US) 	|	 358 N Palatine rd 	|	 apt#123         	|	 Chicago 	|	 NC    	|	50008	|	99999999	|	 Shoes        	|	 Red Shoes            	|	 Sara           	|	 Lee           	|	 SaraINC           	|	 United States (US) 	|	 141 Main St          	|	 apt#43               	|	 Apex      	|	 NC       |	27519	       |	 Thank you   	|
      |	Tyl Laughlin1	|	Tyl Laughlin1@gmail.com	  |	112233	|	Tyla	|  Laughlin	    |	 Sam INC      	|	 United States (US) 	|	 777 N Palatine rd 	|	 apt#777         	|	 Chicago 	|	 IN    	|	55555	|	44444444	|	 Tshirt       	|	 Green Tshirt         	|	 Sara           	|	 Lee           	|	 SaraINC           	|	 United States (US) 	|	 109 Main St          	|	 apt#43               	|	 Apex      	|	 NC       |	27987	       |	 Thank you   	|
      |	JacFournier1	|	JacFournier1@gmail.com	  |	112233	| Jacquelyn |  Fournier		|	 Bob INC      	|	 United States (US) 	|	 123 N Palatine rd 	|	 apt#321         	|	 Chicago 	|	 IL    	|	60008	|	12345678	|	 jeans        	|	 Dark Grey Jeans      	|	 Sara           	|	 Lee           	|	 SaraINC           	|	 United States (US) 	|	 101 Main St          	|	 apt#43               	|	 Apex      	|	 NC    	  |	27054	       |	 Thank you   	|
      |	AmaKolb1	    |	AmaKolb1@gmail.com	      |	112233	|	Amari 	|	 Kolb	    |	 Ken INC      	|	 United States (US) 	|	 358 N Palatine rd 	|	 apt#123         	|	 Chicago 	|	 NC    	|	50008	|	99999999	|	 Bracelet     	|	 Anchor Bracelet      	|	 Sara           	|	 Lee           	|	 SaraINC           	|	 United States (US) 	|	 980 Main St          	|	 apt#43               	|	 Apex      	|	 NC       |	20987	       |	 Thank you   	|
      |	JohDodds1	    |	Joh Dodds1@gmail.com	  |	112233	|	Johnna 	|	 Dodds	    |	 Bob INC      	|	 United States (US) 	|	 123 N Palatine rd 	|	 apt#321         	|	 Chicago 	|	 IL    	|	60008	|	12345678	|	 jeans        	|	 Faint Blue Jeans     	|	 Sara           	|	 Lee           	|	 SaraINC           	|	 United States (US) 	|	 245 Main St          	|	 apt#49               	|	 Apex      	|	 NC       |	27598	       |	 Thank you   	|
      |	DanHofmann1	    |	DanHofmann1@gmail.com	  |	112233	|	Dania	|	Hofmann	    |	 Sam INC      	|	 United States (US) 	|	 777 N Palatine rd 	|	 apt#777         	|	 Chicago 	|	 IN    	|	55555	|	44444444	|	 Bracelet     	|	 Boho Bangle Bracelet 	|	 Sara           	|	 Lee           	|	 SaraINC           	|	 United States (US) 	|	 168 Main St          	|	 apt#40               	|	 Apex      	|	 NC    	  |	27505	       |	 Thank you   	|
      |	CiaMattson1	    |	CiaMattson1@gmail.com	  |	112233	|	Ciana	|	Mattson	    |	 Ken INC      	|	 United States (US) 	|	 358 N Palatine rd 	|	 apt#123         	|	 Chicago 	|	 NC    	|	50008	|	99999999	|	 jeans        	|	 Basic Blue Jeans     	|	 Sara           	|	 Lee           	|	 SaraINC           	|	 United States (US) 	|	 192 Main St          	|	 apt#44               	|	 Apex      	|	 NC       |	27032	       |	 Thank you   	|


