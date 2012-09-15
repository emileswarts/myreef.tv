FactoryGirl.define do
	factory :user do
		name "Emile Swarts"
		email "emile.swarts123@gmail.com"
		password 'foobar'
		password_confirmation 'foobar'
	end
end
