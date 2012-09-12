require 'spec_helper'

describe "Static Pages" do

  describe "Home page" do

	  it "Should have h1 header 'Myreef.tv'" do
		  visit '/static_pages/home'
		  page.should have_selector('h1', :text => 'Myreef.tv')
	  end

	  it "Should have the base title" do
		  visit '/static_pages/home'
		  page.should have_selector('h1', 
									:text => 'Myreef.tv')
	  end

	  it "It should not have a custom page title" do
		  visit '/static_pages/home'
		  page.should_not have_selector('h1', :text => '| Home')
	  end
  end
end
