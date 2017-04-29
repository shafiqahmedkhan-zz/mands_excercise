module PageObjects
  module Sections
    module LoginPage
      class SignIn < SitePrism::Section

        element :username_txt, '#ap_email'
        element :password_txt, '#ap_password'
        element :sign_in_btn, '#signInSubmit'

        def login (username, password)
          username_txt.set(username)
          password_txt.set(password)
          sign_in_btn.click
        end

      end
    end
  end
end