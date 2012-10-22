class Submission < ActiveRecord::Base
  attr_accessible :form_data, :wufoo_entry_id
  protected :save
  serialize :form_data

  has_many :complaints

  def self.new_from_provider(attrs = {})
    payload = {
      field_structure: attrs['FieldStructure'],
      form_structure: attrs['FormStructure'],
      fields: attrs.select { |_| _.match(/Field\d{1,}$/) },
    }

    self.new(form_data: payload, wufoo_entry_id: attrs['EntryId'])
  end

  def process
    build_complaint_associations
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

  def reporter_name
    [form_fields['Field2'], form_fields['Field3']].join(' ')
  end

  def reporter_phone
    form_fields['Field6']
  end

  def reporter_email
    form_fields['Field5']
  end

  def reported_owner
    form_fields['Field123']
  end

  def city_name
    form_fields['Field124']
  end

  def street_address
    [form_fields['Field15'], form_fields['Field16']].join(' ')
  end

  def locality_name
    return '' unless geo_info
    loc = geo_info.address_components_of_type(:administrative_area_level_3)
    loc.empty? ? geo_info.city : loc.first["long_name"]
  end

  def locality
    Locality.find_by_name(locality_name)
  end

  def resources
    resources = locality.resources.reject! { |resource| (resource.complaints & complaints).empty? }
    resources.nil? ? Resource.all : resources
  end

  private

  def form_fields
    form_data[:fields]
  end

  def build_complaint_associations
    Complaint.find_each do |complaint|
      next if form_fields[complaint.field_name].blank?
      complaints.push(complaint)
    end
  end
end

