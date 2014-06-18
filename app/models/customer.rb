class Customer < ActiveRecord::Base
	belongs_to :company
	belongs_to :location

	TITLE = ["Mr", "Mrs", "Ms", "Dr"]
end
