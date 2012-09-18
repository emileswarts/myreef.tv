FactoryGirl.define do
	factory :user do
		sequence(:name) { |n| "Person #{n}" }
		sequence(:email) { |n| "Person_#{n}@myreef.tv" }
		password 'foobar'
		password_confirmation 'foobar'
	end
end
