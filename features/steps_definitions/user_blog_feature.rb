Given(/^I'm logged in the website$/) do
  @browser.goto @secret['website']
  @browser.text_field(:id => 'user_username').set @secret['user']
  @browser.text_field(:id => 'user_password').set @secret['password']
  @browser.input(:id => 'user_submit').click

  @browser.text.should include @secret['message']
end

Given(/^I go to "(.*?)"$/) do |my_profile|
  @browser.link(:text => my_profile).click
  @browser.text.should include "My portal settings"
end

Given(/^I click in "(.*?)"$/) do |write_post|
  @browser.link(:text => write_post).click
  Watir::Wait.until { @browser.text_field(:id => 'item_title').exists? }
  Watir::Wait.until { @browser.frame(:id => 'item_description_ifr').exists? }
end

Given(/^I fulfill the post form with some content$/) do
  @browser.text_field(:id => 'item_title').set @blog['title']
  @browser.frame(:id => 'item_description_ifr').send_keys @blog['description']
end

Then(/^The post appears as the last one$/) do
  @browser.input(:id => 'item_submit').click
  @browser.link(:text => @blog['title']).should exist
end

Given(/^I click in Edit post$/) do
  @browser.link(:text => @blog['title']).click
  @browser.link(:text => 'Edit').click
  Watir::Wait.until { @browser.link(:text => 'Delete').exists? }
end

Given(/^I click on "(.*?)" and confirm it$/) do |arg1|
  @browser.link(:text => 'Delete').click
  @browser.alert.ok
end

Then(/^the post disappears from the post list$/) do
  @browser.link(:text => @blog['title']).should_not exist
end
