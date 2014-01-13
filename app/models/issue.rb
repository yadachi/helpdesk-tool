class Issue < ActiveRecord::Base
  belongs_to :companies

  validates :company_id, :summary, presence: true
end
