require 'spec_helper'

describe User do

	before do 
		@user = User.new(name: "Example user", email: "user@example.com") 
	end

	subject{@user}

	it { should respond_to(:name) }
	it { should respond_to(:email) }
	it { should respond_to(:password_digest) }

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
			addresses = %w[ user@foo,com user_at_foo.org example.user.foo.org foo@bar.baz.com ]
			addresses.each do |invalid_address|
				@user.email = invalid_address 
				@user.email {should_not be_valid}
			end

		end
	end
	describe "When an email format is invalid" do
		it "should be valid" do
			addresses = %w[ emile_one@test.com EMILE@test.COM first.js@foo.jp a+b@bes.com ]
			addresses.each do |valid_address|
				@user.email = valid_address
				@user.should be_valid
			end
		end
	end

	describe "When an email address is already taken" do
		before do
			user_with_same_email = @user.dup
			user_with_same_email.email = @user.email.upcase
			user_with_same_email.save
		end
		it {should_not be_valid}
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

