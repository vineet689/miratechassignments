Feature: 360 SMS app menu verification
		@Regression 
		Scenario Outline: Menu verification
		Given That I login SalesFroce app with "<username>" and "<password>"
		When Add "zara coat 3" to Cart
		Then Verify "zara coat 3" is displayed in the Cart
		When Enter valid details and Place the Order
		Then Verify order is present in the OrderHistory

		Given That I login app with "<username>" and "<password>"
   		When Add "zara coat 3" to Cart
    	And I add item "Sauce Labs Backpack" to the cart
    	Then I verify "remove" button particular item which added in the cart
    	And I verify the amount of "Sauce Labs Backpack" and get that
   		When I click shopping cart basket icon
    	Then I verify added product name should be 'Sauce Labs Backpack'
    	And I click particular button "CheckOut" on checkout page
    	When I enter FirstName LastName and Zip
    	And I click particular button "Continue" on checkout page
    	Then I verify updated total amount on checkout
    	And I click particular button "Finish" on checkout page  
    	Then I verify sucess message "Thank you for your order!" 

		 Examples:
          | username    	  | 	password  |
          | standard_user 	  |  secret_sauce |







		Scenario Outline: Say bye
		Given a login to Ecommerce2 application with "<username>" and "<password>"
		Then Verify Error message is displayed

		 Examples:
          | username    	  | 	password  |
          | anshika@gmail.com | Iamking@000   |
       
       
       
