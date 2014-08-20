class Company < ActiveRecord::Base
	has_many :customers
	has_many :locations

	validates :name, presence: true, uniqueness: true

	def self.search(search)
  	if search
    	find(:all, :conditions => ['name LIKE ?', "%#{search}%"])
  	else
    	find(:all)
  	end
	end
end

