class CreateIssues < ActiveRecord::Migration
  def change
    create_table :issues do |t|
      t.string :companyname
      t.text :summary
      t.datetime :receiveddate
      t.date :duedate
      t.string :status
      t.string :supporttype
      t.string :assignedto

      t.timestamps
    end
  end
end
