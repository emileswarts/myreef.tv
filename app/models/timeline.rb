class Timeline
		def initialize

		end

		#return an array as follows
		#[creature_name, 'date_aquired', 'date_died']
		# fishtank[fishtank_id] = [['blenny',2011-11-08, 2012-12-17], 'mandarin',2011-11-08, 2012-12-17]]
		def getUserTimelines(user)

				width = 940

				fishtanks_ids = user.fishtanks.collect { |a| a.id}

				creatures = Creature.find_all_by_fishtank_id(fishtanks_ids)

				start_year = getStartDate(creatures).strftime('%Y')
				end_year = Date.today.strftime('%Y') 
				timeline_duration = (start_year..end_year)
				# range = [start_year, end_year]

				# range

				timeline_duration
				 # range

				# fishtank_creatures

		end

		def getStartDate(creatures)

				creature_dates = []
				creatures.each do |creature|
						creature_dates << creature.date_aquired
				end

				creature_dates.min
		end

end
