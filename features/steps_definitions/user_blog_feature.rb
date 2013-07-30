Given(/^I'm logged in the website$/) do
  full_login
end

Given(/^I go to "(.*?)"$/) do |my_profile|
  click_to_and_verify(my_profile, 'My portal settings')
end

Given(/^I click in "(.*?)"$/) do |write_post|
  click_and_wait_verify write_post
end

Given(/^I fulfill the post form with some content$/) do
  fill_a_post
end

Then(/^The post appears as the last one$/) do
  verify_last_post
end

Given(/^I click in Edit post$/) do
  edit_last_post
end

Given(/^I click on "(.*?)" and confirm it$/) do |arg1|
  delete_last_post
end

Then(/^the post disappears from the post list$/) do
  verify_post_not_exist
end
