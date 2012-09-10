require 'spec_helper'

describe "Static Pages" do

  describe "Home page" do
    it "Should have the content 'Sample app'" do
		visit '/static_pages/home'
		page.should have_content('Sample App')
    end
  end

  describe "Help page" do
	  it "Should have the content 'Help'" do
		  visit '/static_pages/help'
		  page.should have_content('Help')
	  end
  end

end
