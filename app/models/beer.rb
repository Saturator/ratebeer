class Beer < ActiveRecord::Base
	belongs_to :brewery
	has_many :ratings

	def average_rating
		#sum = 0
		#self.ratings.each { |rating| sum+=rating.score}
		#sum / self.ratings.count
		self.ratings.average(:score)
	end
end
