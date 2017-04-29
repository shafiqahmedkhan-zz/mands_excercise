require 'site_prism'
require_relative 'sections/search_results_page/listing'

module PageObjects
  class SearchResultsPage < SitePrism::Page

    section :listing, PageObjects::Sections::SearchResultsPage::Listing, '#listing-sort-top'
    element :empty_search_msg, '.criteria'

  end
end