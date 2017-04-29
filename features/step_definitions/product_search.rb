require 'selenium-webdriver'

When /^I click login$/ do
  #@homepage = PageObjects::HomePage.new
  #@homepage.navigation_bar.your_acc_btn.click
end


And(/^enter valid (.*) and (.*)$/) do |username, password|
  #@loginpage = PageObjects::LoginPage.new
  #@loginpage.sign_in.login(username,password)

end

Given(/^M&S site is open$/) do
  visit "http://www.marksandspencer.com"
end

When(/^I search for (.*)$/) do |item|
  @homepage = PageObjects::HomePage.new
  @homepage.search_bar.search_item(item)
end

Then(/^there should be more than one search result$/) do
  pending
end