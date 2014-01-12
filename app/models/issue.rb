class Issue < ActiveRecord::Base
	belongs_to :companies

	validates_presence_of :companies
  validates :summary, presence: true
end
