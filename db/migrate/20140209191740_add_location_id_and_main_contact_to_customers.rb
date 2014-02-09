class AddLocationIdAndMainContactToCustomers < ActiveRecord::Migration
  def change
    add_column :customers, :location_id, :integer
    add_column :customers, :main_contact, :boolean
  end
end
