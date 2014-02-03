class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :userid
      t.string :password_digest
      t.string :name
      t.integer :level
      t.boolean :accountlockflg
      t.boolean :delflg

      t.timestamps
    end
  end
end
