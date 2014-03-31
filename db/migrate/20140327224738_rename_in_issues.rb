class RenameInIssues < ActiveRecord::Migration
  def change
  	rename_column :issues, :support_type, :issue_type
  end
end
