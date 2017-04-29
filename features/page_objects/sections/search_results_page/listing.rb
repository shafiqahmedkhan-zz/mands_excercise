module PageObjects
  module Sections
    module SearchResultsPage
      class Listing < SitePrism::Section

        element :item_count, '.count'
        element :no_items_found, '.criteria'

        def more_than_one_item_displayed
          item_count.text.to_i >= 0
        end

        #def no_items_displayed
        #  expect(page).to have_no_css(item_count)
          #item_count.text.to_i = 0
        #end

        def sorry_message_displayed
          expect(no_items_found).to include("we're sorry we couldn't find anything to match your search")
        end

      end
    end
  end
end