class Issue < ActiveRecord::Base
  belongs_to :company

  validates :company_id, :summary, presence: true
end
