require 'site_prism'
require_relative 'sections/login_page/sign_in'

module PageObjects
  class LoginPage < SitePrism::Page

    section :sign_in, PageObjects::Sections::LoginPage::SignIn, '.a-box'

  end
end