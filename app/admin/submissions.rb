ActiveAdmin.register Submission do
  index do
    column :id do |submission|
      link_to submission.id, admin_submission_path(submission)
    end
    column :wufoo_entry_id
    column :created_at
    column :updated_at
  end
end
