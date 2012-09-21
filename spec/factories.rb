FactoryGirl.define do
	factory :user do
		sequence(:name) { |n| "Person #{n}" }
		sequence(:email) { |n| "Person_#{n}@myreef.tv" }
		password 'foobar'
		password_confirmation 'foobar'

		factory :admin do
			admin true
		end
	end

	factory :gallery do
		title "Test"
		user
	end
end
