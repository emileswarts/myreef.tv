require 'spec_helper'

describe "Gallery pages" do

	subject { page }

	let(:user) { FactoryGirl.create(:user) }
	before { sign_in user }

	describe "it creates a gallery" do
		#visit new_fishtank_gallery
	end

	describe "it deletes a gallery" do
	end

end
