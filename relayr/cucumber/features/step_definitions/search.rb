# Relayr test
# Author: Carolyn Hung
# created at : Jan 22, 2018

require 'selenium-webdriver'

When (/^I open the webpage from browser$/) do

  @driver = Selenium::WebDriver.for :chrome
  @driver.navigate.to "http://www.google.com/"
end

Then (/^I should see (.*) displayed$/) do |attribute|
  case (attribute)
    when 'search box'
      @driver.find_element(:class, 'gsfi').displayed?
    when 'search button'
      @driver.find_element(:name,'btnK').displayed?
  end
end


Then (/^I type (.*) in search box$/) do |keyword|
  @driver.find_element(:name, 'q').send_keys(keyword)
end

Then (/^I click on the search button$/) do
  @driver.find_element(:name, 'btnG').click
end

And (/^I should see displayed results contain (.*) of search$/) do |keyword|
  @driver.find_element(:class, 'sbsb_b').text.include? keyword
  @driver.quit
end
