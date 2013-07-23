require 'watir-webdriver'
require 'rspec'
require 'simplecov'

SimpleCov.start

Before do
  @browser = Watir::Browser.new :chrome
  @secret = YAML::load(File.open('secret.yml'))
end

After do |scenario|
# @browser.screenshot.save 'screenshot.png'
# embed 'screenshot.png', 'image/png'
end

After do
  @browser.close
end
  
at_exit do
  puts 'finalizing'
end

  