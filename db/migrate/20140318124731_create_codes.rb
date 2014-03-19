class CreateCodes < ActiveRecord::Migration
  def change
    create_table :codes do |t|
      t.integer :codetype
      t.integer :codekey
      t.string :codevalue

      t.timestamps
    end
  end
end
