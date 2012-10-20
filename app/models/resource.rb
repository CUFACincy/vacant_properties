class Resource < ActiveRecord::Base
  attr_accessible :name, :phone
  belongs_to :locality
end
