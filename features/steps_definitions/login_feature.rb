Given(/^we visit the "(.*?)"$/) do |website|
  @browser.goto @secret[website]
end

Given(/^we put this credentials "(.*?)" and password "(.*?)"$/) do |username, password|
  @browser.text_field(:id => 'user_username').set username
  @browser.text_field(:id => 'user_password').set password
  
  @browser.text_field(:id => 'user_username').value.should eq username  
  @browser.text_field(:id => 'user_password').value.should eq password  
end

Then(/^we receive a message containing an "(.*?)"$/) do |alert|
  @browser.input(:id => 'user_submit').click
  @browser.text.should include @secret[alert]
end

Then(/^we the login screen appears again$/) do
  @browser.text_field(:id => 'user_username').should exist
  @browser.text_field(:id => 'user_password').should exist
end

Given(/^we put the good credentials$/) do
  @browser.text_field(:id => 'user_username').set @secret['user']
  @browser.text_field(:id => 'user_password').set @secret['password']
  
  @browser.text_field(:id => 'user_username').value.should eq @secret['user']  
  @browser.text_field(:id => 'user_password').value.should eq @secret['password']
end

Then(/^we click and we reach the home page with a welcome "(.*?)"$/) do |message|
  @browser.input(:id => 'user_submit').click
  @browser.text.should include @secret[message]
end