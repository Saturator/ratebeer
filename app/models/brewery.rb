class Brewery < ActiveRecord::Base
	include Average
	has_many :beers, dependent: :destroy
	has_many :ratings, through: :beers

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
