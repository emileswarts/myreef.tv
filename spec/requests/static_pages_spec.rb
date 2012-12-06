require 'spec_helper'

describe "Static Pages" do
subject {page}

	describe "Home page" do

		before{visit root_path}

		it { should have_selector('h1', :text => 'reeftank.me') }
		it { should_not have_selector('h1', :text => '| Home') }
		it { should have_selector('title', :text => 'Myreef.tv') }
	end

	describe "Help page" do

		before{ visit help_path }

		it { should have_selector('h1', :text => 'Help') }
		it { should have_selector('title', :text => 'Help') }
	end
end
