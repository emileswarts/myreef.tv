require 'spec_helper'

describe Gallery do

	let(:user) { FactoryGirl.create(:user) }

	before do
		@gallery = user.galleries.build(title: "Test")
	end

	subject { @gallery }
  it { should respond_to(:title) }
  it { should respond_to(:user_id) }
  it { should respond_to(:file) }
  it { should respond_to(:user) }
  its(:user) { should == user }

  it { should be_valid }

  describe "When a user id is not valid" do
	  before { @gallery.user_id = nil }
	  it { should_not be_valid }
  end

  describe "accessible attributes" do
	  it "should not allow access to the user id" do
		  expect do
			  Gallery.new(user_id: user.id)
		  end.to raise_error(ActiveModel::MassAssignmentSecurity::Error)
	  end
  end
end
