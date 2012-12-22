class Timeline
		def initialize

		end

		#return an array as follows
		#[creature_name, 'date_aquired', 'date_died']
		# fishtank[fishtank_id] = [['blenny',2011-11-08, 2012-12-17], 'mandarin',2011-11-08, 2012-12-17]]
		def getTimelineYearRange(user)

				fishtanks_ids = user.fishtanks.collect { |a| a.id}

				creatures = Creature.find_all_by_fishtank_id(fishtanks_ids)

				start_date = getStartDate(creatures)
				start_year = start_date.strftime('%Y')

				end_date = Date.today
				end_year = end_date.strftime('%Y') 

				@seconds_duration = start_date.to_datetime - end_date.to_datetime

				timeline_duration = (start_year..end_year)

				timeline_duration
		end

		def getCreatureDurationPercentage()
		end

		def getStartDate(creatures)

				creature_dates = []
				creatures.each do |creature|
						creature_dates << creature.date_aquired
				end

				creature_dates.min
		end

end
