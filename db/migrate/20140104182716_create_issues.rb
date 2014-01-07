class CreateIssues < ActiveRecord::Migration
  def change
    create_table :issues do |t|
      t.string :company_name
      t.text :summary
      t.datetime :received_date
      t.date :due_date
      t.string :status
      t.string :support_type
      t.string :assigned_to

      t.timestamps
    end
  end
end
