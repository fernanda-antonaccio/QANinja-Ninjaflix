require 'capybara'
require 'capybara/cucumber'
require 'selenium-webdriver'

require_relative "helpers"
World(Helpers)

case ENV["BROWSER"]
    when "firefox"
        @driver = :selenium
    when "chrome"
        @driver = :selenium_chrome
    when "headless"
        @driver = :selenium_chrome_headless
    else
        puts "Invalid Brwser"
end

Capybara.configure do |config|
    config.default_driver = @driver
    config.default_max_wait_time = 10
    config.app_host = 'http://localhost:8080/'
end