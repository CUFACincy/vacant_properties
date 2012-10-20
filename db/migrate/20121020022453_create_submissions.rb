class CreateSubmissions < ActiveRecord::Migration
  def change
    create_table :submissions do |t|
      t.text :form_data
      t.timestamps
    end
  end
end
