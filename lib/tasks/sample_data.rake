namespace :db do
		desc "Fill database with sample data"
		task populate: :environment do
			admin = User.create!(
					name: "Emile",
					email: "emile.swarts123@gmail.com",
					password: "corpse",
					password_confirmation: "corpse"
			)

			admin.toggle!(:admin)

		99.times do |n|
			name = Faker::Name.name,
			email = "example-#{n+1}@myreef.tv",
			password = "password"
			User.create!(
					name: name, 
					email: email,
					password: password,
					password_confirmation: password)
		end
	end
end
