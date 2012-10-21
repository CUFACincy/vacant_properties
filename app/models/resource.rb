class Resource < ActiveRecord::Base
  attr_accessible :name, :phone
  belongs_to :locality
  has_and_belongs_to_many :complaints
end
