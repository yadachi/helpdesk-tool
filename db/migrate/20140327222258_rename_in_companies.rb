class RenameInCompanies < ActiveRecord::Migration
  def change
  	rename_column :companies, :main_phone, :telephone
  	remove_column :companies, :location_id, :integer
  end
end
