require 'spec_helper'

describe Timeline do

	before do 
		@user = User.new(
			id: 1, 
			name: "Example user", 
			email: "user@example.com", 
			password: "foobar", 
			password_confirmation: "foobar"
		)
	end

		describe "It gets a user's fishtanks" do
				timeline = Timeline.new
				# user_id = @user.id
				# user_timeline = timeline.getUserTimelines(1)
		end

		describe "It gets the earliest date for a creature for a given user" do
				timeline = Timeline.new
		end

		describe "It returns years for the accumulated livestock" do
				pending "add some examples to (or delete) #{__FILE__}"
		end

		describe "It gets the latest date for a creature for a given user" do
				pending "add some examples to (or delete) #{__FILE__}"
		end

		describe "It should work out the total duration for all creatures as 100%" do
				pending "add some examples to (or delete) #{__FILE__}"
		end

		describe "It should calculate a creatures time in the tank and show it relative to 100%" do
				pending "add some examples to (or delete) #{__FILE__}"
		end

		describe "The total amount of rows in the chart should be equal to the amount of featured creatures" do
				pending "add some examples to (or delete) #{__FILE__}"
		end

end
