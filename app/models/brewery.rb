class Brewery < ActiveRecord::Base
	has_many :beers

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
end
