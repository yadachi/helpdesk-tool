class Issue < ActiveRecord::Base
  validates :company_name, :summary, presence: true
end
