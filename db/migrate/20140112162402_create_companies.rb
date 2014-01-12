class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :name
      t.text :address
      t.string :phone, :limit => 20 
      t.string :fax, :limit => 20

      t.timestamps
    end
  end
end
