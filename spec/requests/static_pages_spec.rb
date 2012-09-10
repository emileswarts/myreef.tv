require 'spec_helper'

describe "Static Pages" do

  describe "Home page" do

    it "It should have the content 'Sample app'" do
		visit '/static_pages/home'
		page.should have_content('Sample App')

    end

  end

end
