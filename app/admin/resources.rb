ActiveAdmin.register Resource do
  show do |ad|
    attributes_table do
      row :id
      row :name
      row :phone
      row :phone_extension
      row :department_name
      row :contact_name
      row :contact_email
      row :other_information
      row :locality
      row :created_at
      row :updated_at
      row :complaints do
        resource.complaints.map(&:name).join(', ')
      end
    end
    active_admin_comments
  end

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
      f.input :complaints
    end
    f.buttons
  end
end
