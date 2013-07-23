Given(/^we visit the "(.*?)" in the "(.*?)" file$/) do |website, secret|
  secret = YAML::load(File.open(secret + '.yml'))
  puts secret[website]
  @browser.goto secret[website]
end

Given(/^we put this credentials "(.*?)" and password "(.*?)"$/) do |arg1, arg2|
  pending # express the regexp above with the code you wish you had
end

Then(/^we receive a message containing "(.*?)"$/) do |arg1|
  pending # express the regexp above with the code you wish you had
end

Then(/^we the login screen appears again$/) do
  pending # express the regexp above with the code you wish you had
end