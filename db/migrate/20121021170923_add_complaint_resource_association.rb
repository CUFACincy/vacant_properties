class AddComplaintResourceAssociation < ActiveRecord::Migration
  def change
    create_table :complaints_resources do |t|
      t.integer :complaint_id
      t.integer :resource_id
    end
  end
end
