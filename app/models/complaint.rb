class Complaint < ActiveRecord::Base
  has_and_belongs_to_many :resources
  attr_accessible :name, :submission_id
end
