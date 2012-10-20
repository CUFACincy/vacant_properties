class CreateResources < ActiveRecord::Migration
  def change
    create_table :resources do |t|
      t.string :name
      t.string :phone
      t.integer :complaint_type_id
      t.string :phone_extension
      t.string :department_name
      t.string :contact_name
      t.string :contact_email
      t.text :other_information
      t.timestamps
    end
  end
end
