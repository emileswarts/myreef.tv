module CreaturesHelper
	def display_creatures(fishtank_id)
		@row_creature = Creature.find_by_fishtank_id(fishtank_id)
		debug(@row_creature)
		# @row_creatures.each do |creature_row|
		# 	"here"
		# end
	end

	def temperament_name(index)
		temperaments = ['Aggressive', 'Semi-aggresive', 'Peaceful']
		index = index.to_i - 1
		temperaments[index]
	end
end
