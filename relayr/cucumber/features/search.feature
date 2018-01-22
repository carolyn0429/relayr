# Relayr test
# Author: Carolyn Hung
# created at : Jan 22, 2018

Feature: test search functionality on webpage
  Scenario Outline: verify <attribute> displayed on the page
    When I open the webpage from browser
    Then I should see <attribute> displayed
    Examples:
    | attribute |
    | search box |
    | search button |

  Scenario Outline: verify search results should display on the page
    When I open the webpage from browser
    And I should see search box displayed
    Then I type <keyword> in search box
    And I should see displayed results contain <keyword> of search
    Examples:
    | keyword |
    | relayr |
    | internet of things |