class Submission < ActiveRecord::Base
  attr_accessible :form_data, :wufoo_entry_id
  protected :save
  serialize :form_data

  def self.new_from_provider(attrs = {})
    payload = {
      field_structure: attrs['FieldStructure'],
      form_structure: attrs['FormStructure'],
      fields: attrs.select { |_| _.match(/Field\d{1,}$/) },
    }

    self.new(form_data: payload, wufoo_entry_id: attrs['EntryId'])
  end

  def process
    save!
    GeocodeJob.perform(self.id)
    self.reload
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

  def locality
    loc = geo_info.address_components_of_type(:administrative_area_level_3)
    loc.empty? ? geo_info.city : loc.long_name
  end

  private

  def form_fields
    form_data[:fields]
  end

end

