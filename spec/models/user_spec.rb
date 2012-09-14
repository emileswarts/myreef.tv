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

