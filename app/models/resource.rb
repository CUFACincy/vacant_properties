class Resource < ActiveRecord::Base
  attr_accessible :name, :phone, :phone_extension, :department_name,
    :contact_name, :contact_email, :locality_id, :complaint_ids,
    :other_information
  belongs_to :locality
  has_and_belongs_to_many :complaints
end
