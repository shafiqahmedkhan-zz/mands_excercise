module PageObjects
  module Sections
    module LoginPage
      class SignIn < SitePrism::Section

        element :username_txt, '#ap_email'
        element :password_txt, '#ap_password'
        element :sign_in_btn, '#signInSubmit'

        def login (username, password)
          username_txt.set(username)
          screenshot_and_save_page
          password_txt.set(password)
          screenshot_and_save_page
          sign_in_btn.click
          screenshot_and_save_page
        end

      end
    end
  end
end