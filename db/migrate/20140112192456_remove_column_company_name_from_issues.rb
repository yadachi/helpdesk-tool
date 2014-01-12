class RemoveColumnCompanyNameFromIssues < ActiveRecord::Migration
  def self.up
  	remove_column :issues, :company_name
	end


	def self.down
  	add_column :issues, :company_name, :string
	end
end
