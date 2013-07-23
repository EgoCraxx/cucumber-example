Given(/^we visit the "(.*?)" in the secret file$/) do |website|
  @browser.goto @secret[website]
end

Given(/^we put this credentials "(.*?)" and password "(.*?)"$/) do |username, password|
  @browser.text_field(:id => 'user_username').set username
  @browser.text_field(:id => 'user_password').set password
  
  @browser.text_field(:id => 'user_username').value.should eq username  
  @browser.text_field(:id => 'user_password').value.should eq password  
end

Then(/^we receive a message containing "(.*?)"$/) do |message|
  @browser.input(:id => 'user_submit').click
  @browser.text.should include message
end

Then(/^we the login screen appears again$/) do
  @browser.text_field(:id => 'user_username').should exist
  @browser.text_field(:id => 'user_password').should exist
end