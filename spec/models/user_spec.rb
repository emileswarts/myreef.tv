require 'spec_helper'

describe User do

	before do 
		@user = User.new(name: "Example user", email: "user@example.com") 
	end

	subject{@user}

	it { should respond_to(:name)}
	it { should respond_to(:email)}

	it { should be_valid }

	describe "When a name is not present" do
		before { @user.name = " " }
		it { should_not be_valid }
	end

	describe "When an email is not present" do
		before {@user.email = ""}
		it { should_not be_valid }
	end

	describe "When a name is too long" do
		before { @user.name = "a" * 51 }
		it { should_not be_valid }
	end

	describe "When an email format is invalid" do
		it "should be invalid" do
			addresses = %w[user@foo,com user_at_foo.org example.user.foo.org foo@bar.baz.com ]
			addresses.each do |invalid_address|
				@user.email = invalid_address 
				@user.email {should_not be_valid}
			end

		end
		it "should be valid" do

		end
	end
	
end
# == Schema Information
#
# Table name: users
#
#  id         :integer         not null, primary key
#  name       :string(255)
#  email      :string(255)
#  created_at :datetime        not null
#  updated_at :datetime        not null
#

