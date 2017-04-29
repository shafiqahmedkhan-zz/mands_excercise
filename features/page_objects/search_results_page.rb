require 'site_prism'
require_relative 'sections/home_page/search_bar'

module PageObjects
  class HomePage < SitePrism::Page

    section :search_bar, PageObjects::Sections::HomePage::SearchBar, '.search-box'

  end
end