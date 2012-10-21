class Resource < ActiveRecord::Base
  attr_accessible :name, :phone, :phone_extension, :department_name,
    :contact_name, :contact_email, :locality_id, :complaint_ids,
    :other_information, :complaint_names

  belongs_to :locality
  has_and_belongs_to_many :complaints

  def complaint_names=(names)
    names.split(',').each do |name|
      complaint = Complaint.find_by_name(name.strip)
      next unless complaint.present?
      complaints.push(complaint)
    end
  end
end
