require 'watir-webdriver'
require 'watir-webdriver-performance'
require 'rspec'
require 'simplecov'

SimpleCov.start

Before do
  @browser = Watir::Browser.new :chrome
  @secret = YAML::load(File.open('secret.yml'))
  @blog = YAML::load(File.open('blog.yml'))
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

  