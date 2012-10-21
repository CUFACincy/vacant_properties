class Complaint < ActiveRecord::Base
  has_and_belongs_to_many :resources
  attr_accessible :name, :field_name, :submission_id
end
