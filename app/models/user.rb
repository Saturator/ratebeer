class User < ActiveRecord::Base
	include Average
	validates :username, uniqueness: true, length: {minimum: 3, maximum: 30}
	#validates :password, length: {minimum: 4}
	#validates_format_of :password, :with => ([A-Z]+)|(\d)
	has_many :ratings
	has_many :memberships
end
