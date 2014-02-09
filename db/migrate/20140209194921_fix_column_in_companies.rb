class FixColumnInCompanies < ActiveRecord::Migration
  def change
  	change_table :companies do |t|
  	 	t.remove :address
    	t.integer :location_id
    	t.string :fax
    	t.rename :telno, :main_phone
    	t.rename :delflg, :deleted
    end
  end
end
