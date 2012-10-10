require 'spec_helper'

describe "Gallery pages" do

	subject { page }

	let(:user) { FactoryGirl.create(:user) }
	before { sign_in user }

	describe "gallery creation" do
#		before { visit root_path}
#
#		describe "with invalid information" do
#			it "should not create a gallery image" do
#				expect { click_button "submit" }.not_to change(Gallery, :count)
#			end
#
#			describe "error messages" do
#				before { click_button "submit" }
#				it { should have_content("error") }
#			end
#		end
#
#		describe "with valid information" do
#			before { fill_in 'gallery_title', with: "Test" }
#			it "should create a gallery item" do
#				expect { click_button "submit" }.to change(Gallery, :count).by(1)
#			end
#		end
	end

end
