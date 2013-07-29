Feature: The user can post an entry in her blog. Update/Delete are also allowed.

	@WIP
	Scenario: Add a post in my personal blog.
		Given I'm logged in the website
		And I go to "My profile"
		And I click in "Write a new post"
		And I fulfill the post form with some content
		Then The post appears as the last one
	
	@WIP
	Scenario: Delete a post from my personal blog
		Given I'm logged in the website
		And I go to "My profile"
		And I click in Edit post
		And I click on "Delete" and confirm it
		Then the post disappears from the post list
		
	 
 
 