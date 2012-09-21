require 'spec_helper'

describe Gallery do

	let(:user) { FactoryGirl.create(:user) }

	before { @gallery = user.galleries.build(title: "Test") }

	subject { @gallery }

	it { should respond_to(:title) }
	it { should respond_to(:user_id) }
	it { should respond_to(:file) }
	it { should respond_to(:user) }
	its(:user) { should == user }

	it { should be_valid }

	describe "accessible attributes" do
		#it "should not allow access to the user id" do
			#expect do
				#Gallery.new(user_id: user.id)
			#end.to raise_error(ActiveModel::MassAssignmentSecurity::Error)
		#end
	end

	describe "When a user id is not valid" do
		before { @gallery.user_id = nil }
		it { should_not be_valid }
	end

	describe "When a user id is not present" do
		before { @gallery.user_id = nil }
		it { should_not be_valid }
	end

	describe "With a blank title" do
		before { @gallery.title = nil }
		it { should_not be_valid }
	end

	describe "with a file that is too large" do
		#todo
	end

	describe "with a title that is too long" do
		before { @gallery.title = "a" * 201 }
		it { should_not be_valid }
	end
end
