class CreateResources < ActiveRecord::Migration
  def change
    create_table :resources do |t|
      t.string :name
      t.string :phone
      t.string :phone_extension
      t.string :department_name
      t.string :contact_name
      t.string :contact_email
      t.text :other_information
      t.integer :locality_id
      t.timestamps
    end
  end
end
