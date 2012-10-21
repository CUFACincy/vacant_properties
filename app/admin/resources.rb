ActiveAdmin.register Resource do
  form do |f|
    f.inputs do
      f.input :name
      f.input :phone
      f.input :phone_extension
      f.input :department_name
      f.input :contact_name
      f.input :contact_email
      f.input :other_information
      f.input :locality
      f.input :complaints, as: 'check_boxes', collection: Complaint.all.map { |c| [c.name, c.id] }
    end
    f.buttons
  end
end
