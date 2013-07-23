Feature: Everything around the login of the site

	Scenario: Bad credentials in the login form
		Given we visit the "website" in the "secret" file
		And we put this credentials "john.nobody" and password "foo123"
		Then we receive a message containing "Invalid Enterprise ID and password"
		And we the login screen appears again 
		     		
			 