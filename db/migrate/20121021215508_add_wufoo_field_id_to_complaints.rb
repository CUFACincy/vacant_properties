class AddWufooFieldIdToComplaints < ActiveRecord::Migration
  def change
    add_column :complaints, :field_name, :string
  end
end
