class CreateComplaints < ActiveRecord::Migration
  def change
    create_table :complaints do |t|
      t.string :name
      t.belongs_to :submission
    end
  end
end
