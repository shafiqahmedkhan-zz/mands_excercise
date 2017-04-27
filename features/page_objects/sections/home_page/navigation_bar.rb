module PageObjects
  module Sections
    module HomePage
      class NavigationBar < SitePrism::Section

        element :your_acc_btn, "a[id='nav-link-yourAccount']"

      end
    end
  end
end