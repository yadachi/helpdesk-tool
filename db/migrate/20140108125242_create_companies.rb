class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :name
      t.string :address
      t.string :telno
      t.boolean :delflg

      t.timestamps
    end
  end
end
