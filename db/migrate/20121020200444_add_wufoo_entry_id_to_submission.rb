class AddWufooEntryIdToSubmission < ActiveRecord::Migration
  def change
    add_column :submissions, :wufoo_entry_id, :integer
  end
end
