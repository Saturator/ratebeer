class Brewery < ActiveRecord::Base
	include Average
	has_many :beers, dependent: :destroy
	has_many :ratings, through: :beers
	has_many :raters, -> {uniq}, through: :ratings, source: :user
	validates :name, :presence => true
	validates_inclusion_of :year, in: 1000..2017

	def print_report
		puts name
		puts "established in #{year}"
		puts "number of beers #{beers.count}"
	end

	def test
		puts "test"
	end

	def restart
		self.year = 2017
		puts "changed year to #{year}"
	end

	def to_s
		"#{name}"
	end
end
