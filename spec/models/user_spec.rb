require 'spec_helper'

describe User do

	before do 
		@user = User.new(
			name: "Example user", 
			email: "user@example.com", 
			password: "foobar", 
			password_confirmation: "foobar"
		)
	end

	subject{ @user }

	it { should respond_to(:name) }
	it { should respond_to(:email) }
	it { should respond_to(:password_digest) }
	it { should respond_to(:password) }
	it { should respond_to(:password_confirmation) }
	it { should respond_to(:authenticate) }
	it { should respond_to(:galleries) }
	it { should respond_to(:admin) }

	it { should be_valid }
	it { should_not be_admin }

	describe 'with admin attributes set to true' do
		before do
			@user.save!
			@user.toggle!(:admin)
		end

		it { should be_admin }
	end

	describe "remember token" do
		before{ @user.save }
		its(:remember_token) { should_not be_blank }
	end
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
	describe "When an email format is valid" do
		it "should be valid" do

			addresses = %w[ emile_one@test.com EMILE@test.com first.js@foo.jp a+b@bes.com ]

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

	describe "When password is not present" do
		before {@user.password = @user.password_confirmation = " "}
		it { should_not be_valid }
	end

	describe "When password doesn't match" do
		before {@user.password_confirmation = "mismatch" }
	end

	describe "When password confirmation is nil" do
		before {@user.password_confirmation = nil }
		it { should_not be_valid }
	end

	describe "return value of authenticate method" do
    	before { @user.save }
		let(:found_user) { User.find_by_email(@user.email) }

		describe "with valid password" do
			it { should == found_user.authenticate(@user.password) }
		end

		describe "with invalid password" do
			let(:found_user_invalid) { found_user.authenticate('invalid') }
			it { should_not == found_user_invalid }
			specify { found_user_invalid.should be_false }
		end
	end

	describe "with password that's too short" do
		before { @user.password = @user.password_confirmation = 'a' * 5 }
		it { should be_invalid }
	end

	describe "Email with mixed case" do
		let (:email_with_mixed_case) { "Test@Otest.Com" }

		it "Should be saved as all lowercase" do
			@user.email = email_with_mixed_case
			@user.save
			@user.reload.email.should == email_with_mixed_case.downcase
		end
	end
end
