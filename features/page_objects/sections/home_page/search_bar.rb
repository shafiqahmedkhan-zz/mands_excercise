module PageObjects
  module Sections
    module HomePage
      class SearchBar < SitePrism::Section

        element :search_box, '#global-search'
        element :search_btn, '#goButton'

        def search_item (item)
          search_box.set item
          search_btn.click
        end

      end
    end
  end
end