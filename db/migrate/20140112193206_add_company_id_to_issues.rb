class AddCompanyIdToIssues < ActiveRecord::Migration
  def change
    add_column :issues, :company_id, :integer
  end
end
