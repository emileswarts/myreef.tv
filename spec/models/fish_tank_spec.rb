require 'spec_helper'

describe Fishtank do
	before do
		@fishtank = Fishtank.new(
			id: 1,
			title: "AR620",
			user_id: 10
		)
	end

	subject { @fishtank }

	it { should respond_to :id }
	it { should respond_to :user_id }
	#it { should be_valid }

	describe "wrong user edits a fishtank" do
	end

	describe "it belongs to a user" do
	end

	describe "it has many galleries" do
	end

end
