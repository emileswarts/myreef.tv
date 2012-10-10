require 'spec_helper'

describe Gallery do

	let(:user) { FactoryGirl.create(:user) }

	before { @gallery = user.galleries.build(title: "Test") }

	subject { @gallery }

	it { should respond_to(:title) }
	it { should respond_to(:user_id) }
	it { should respond_to(:photo) }
	it { should respond_to(:user) }
	its(:user) { should == user }

	it { should be_valid }

	describe "When a user id is not valid" do
		before { @gallery.user_id = nil }
		it { should_not be_valid }
	end

	describe "accessible attributes" do
		it "should not allow access to user_id attribute" do
			expect do
				Gallery.new(user_id: user.id)
			end.to raise_error(ActiveModel::MassAssignmentSecurity::Error)
		end
	end

	describe "When a gallery item is destroyed" do

		describe "belonging to owner" do
			#it { should be_valid }
		end
		describe "belonging to another user" do
			#it { should_not be_valid }
		end
	end

	describe "with a file that is too large" do
		#todo
	end

	describe "with a title that is too long" do
		before { @gallery.title = "a" * 257 }
		it { should_not be_valid }
	end
end
