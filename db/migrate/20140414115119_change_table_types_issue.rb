class ChangeTableTypesIssue < ActiveRecord::Migration

  def up
  	change_column :issues, :company_name, :integer
  	change_column :issues, :status, :integer
  	change_column :issues, :issue_type, :integer
  	change_column :issues, :assigned_to, :integer
  end

  def down
  	change_column :issues, :company_name, :string
  	change_column :issues, :status, :string
  	change_column :issues, :issue_type, :string
  	change_column :issues, :assigned_to, :string
  end

end