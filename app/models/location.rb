class Location < ActiveRecord::Base
	belongs_to :company
	has_many :customers
end
