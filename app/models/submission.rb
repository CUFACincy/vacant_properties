class Submission < ActiveRecord::Base
  attr_accessible :form_data
  protected :save
  serialize :form_data

  def self.new_from_provider(attrs = {})
    payload = {
      field_structure: attrs['FieldStructure'],
      form_structure: attrs['FormStructure'],
      fields: attrs.select { |_| _.match(/Field\d{1,}$/) }
    }

    self.new(form_data: payload)
  end

  def process
    save!
    GeocodeJob.perform(self.id)
  end

  def set_geocoded(result)
    form_data[:geocoded] = result
    save!
  end

  def geo_info
    form_data[:geocoded]
  end

  def street_address
    [form_fields['Field15'], form_fields['Field16']].join(' ')
  end

  private

  def form_fields
    form_data[:fields]
  end

end

