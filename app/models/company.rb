class Company < ActiveRecord::Base
	has_many :customers
	has_many :locations
end
