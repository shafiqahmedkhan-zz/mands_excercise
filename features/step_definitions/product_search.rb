require 'selenium-webdriver'

Given(/^M&S site is open$/) do
  visit "http://www.marksandspencer.com"
end

When(/^I search for (.*)$/) do |item|
  @homepage = PageObjects::HomePage.new
  @homepage.search_bar.search_item(item)
end

Then(/^there should be more than one search result$/) do
  @searchresultspage = PageObjects::SearchResultsPage.new
  @searchresultspage.listing.more_than_one_item_displayed
end

Then(/^I should see no results page$/) do
  @searchresultspage = PageObjects::SearchResultsPage.new

end