class Issue < ActiveRecord::Base
	has_many :activities

	def self.search(search)
		if search
			find(:all, :conditions => ['summary LIKE ?', "%#{search}%"])
		else
			find(:all)
		end
  	end

end
