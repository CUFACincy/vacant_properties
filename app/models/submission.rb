class Submission < ActiveRecord::Base
  attr_accessible :form_data

  def self.new_from_provider(attrs)
    self.new(form_data: attrs)
  end
end
