require 'spec_helper'

describe "Static Pages" do

  describe "Home page" do

	  it "Should have title h1 'Myreef.tv'" do
		  visit '/static_pages/home'
		  page.should have_selector('h1', :text => 'Myreef.tv')
	  end
    it "Should have the title 'Home'" do
		visit '/static_pages/home'
		page.should have_selector('title', :text => 'Myreef.tv')
    end
  end

  describe "Help page" do
	  it "Should have the content 'Help'" do
		  visit '/static_pages/help'
		  page.should have_content('Help')
	  end
  end

  describe "About page" do
	  it "Should have content 'About us'" do
		  visit '/static_pages/about'
		  page.should have_content('About')

	  end
  end

end
