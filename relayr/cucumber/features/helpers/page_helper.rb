# Relayr test
# Author: Carolyn Hung
# created at : Jan 22, 2018

require 'selenium-webdriver'

#### for future use, if we want to verify more on the page and interaction, we should have a helper###
### for now, I just created it as basic framework with a few functions####
class PageHelper

  BASE_URL = "http://www.google.com/"

  def initialize()
    @driver = Selenium::WebDriver.for :chrome
    @driver.navigate.to "http://www.google.com/"
  end

  def sign_in()
    return @driver.find_element(:id,'gb_70')
  end

  def search_attribute(attribute)
    case (attribute)
      when 'search box'
        return @driver.find_element(:class, 'gsfi')
      when 'search button'
        return @driver.find_element(:name,'btnK')
    end

  end

  def close_browser()
    @driver.quit
  end
end


