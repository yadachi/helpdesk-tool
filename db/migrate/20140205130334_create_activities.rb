class CreateActivities < ActiveRecord::Migration
  def change
    create_table :activities do |t|
      t.integer :issue_id
      t.datetime :date_time
      t.integer :activity_type
      t.string :activity_note
      t.integer :hours
      t.integer :minutes
      t.integer :entered_by

      t.timestamps
    end
  end
end
