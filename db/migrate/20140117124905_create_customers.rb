class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :title, :limit => 10,
      t.string :name, :limit => 60,
      t.string :direct_number, :limit => 20,
      t.string :email, :limit => 60,

      t.timestamps
    end
  end
end
