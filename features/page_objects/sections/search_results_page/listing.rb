module PageObjects
  module Sections
    module SearchResultsPage
      class Listing < SitePrism::Section

        element :item_count, '.count'

        def more_than_one_item_displayed
          item_count.text.to_i != 0
        end


      end
    end
  end
end