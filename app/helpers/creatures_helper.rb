module CreaturesHelper
	def display_creatures(fishtank_id)
		@row_creature = Creature.find_by_fishtank_id(fishtank_id)
		debug(@row_creature)
		# @row_creatures.each do |creature_row|
		# 	"here"
		# end
	end
end
