require 'site_prism'
require 'selenium-webdriver'
require 'capybara'

Given(/^M&S site is open$/) do
  visit "http://www.marksandspencer.com"
end

When(/^I search for (.*)$/) do |item|
  @homepage = PageObjects::HomePage.new
  @homepage.search_bar.search_item(item)
end

Then(/^there should be more than one search result$/) do
  @searchresultspage = PageObjects::SearchResultsPage.new
  sleep(2)
  @searchresultspage.listing.more_than_one_item_displayed
end

Then(/^I should see no results page$/) do
  @searchresultspage = PageObjects::SearchResultsPage.new
  expect(@searchresultspage).not_to have_selector('#listing-sort-top')
end

And(/^I should see a no results message saying "([^"]*)"$/) do |message|
  expect(@searchresultspage.empty_search_msg.text).to have_text(message)
end