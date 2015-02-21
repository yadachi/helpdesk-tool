class Company < ActiveRecord::Base
	has_many :customers
	has_many :locations
	has_many :issues

	validates :name, presence: true, uniqueness: true
	validates :telephone, length: {minimum: 11}

	def self.search(search)
  	if search
    	find(:all, :conditions => ['name LIKE ?', "%#{search}%"])
  	else
    	find(:all)
  	end
	end
end

