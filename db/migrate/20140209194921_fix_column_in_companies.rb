class FixColumnInCompanies < ActiveRecord::Migration
  def change
  	remove_column :companies, :address, :string
    add_column :companies, :location_id, :string
    add_column :companies, :fax, :string
    rename_column :companies, :telno, :main_phone
    rename_column :companies, :delflg, :is_deleted
  end
end
