class RenameCompanynameInIssues < ActiveRecord::Migration
  def up
  	rename_column :issues, :company_name, :company_id
  	rename_column :issues, :assigned_to, :user_id
  end

  def down
  	rename_column :issues, :company_id, :company_name
  	rename_column :issues, :user_id, :assigned_to
  end
end
