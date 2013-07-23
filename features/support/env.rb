require 'watir-webdriver'
require 'simplecov'

SimpleCov.start

Before do
  @browser = Watir::Browser.new :chrome
end

After do |scenario|
  @browser.screenshot.save 'screenshot.png'
  embed 'screenshot.png', 'image/png'
end

at_exit do
#  @browser.close
end

  