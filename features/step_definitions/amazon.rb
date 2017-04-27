require 'selenium-webdriver'

Given /^Amazon.co.uk is open$/ do
  visit "http://www.amazon.co.uk"
end

When /^I click login$/ do
  @homepage = PageObjects::HomePage.new
  @homepage.navigation_bar.your_acc_btn.click
end


And(/^enter valid (.*) and (.*)$/) do |username, password|
  @loginpage = PageObjects::LoginPage.new
  @loginpage.sign_in.login(username,password)

end