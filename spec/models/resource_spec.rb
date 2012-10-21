require 'spec_helper'

describe Resource do
  it { should belong_to(:locality) }
  
  describe "#complaint_names=" do
    let(:resource) { Resource.new }
    let(:names) { "grass, rodents, turkeys" }
    let(:grass_complaint) { Complaint.new(name: 'grass') }
    let(:rodent_complaint) { Complaint.new(name: 'rodents') }

    before(:each) do
      Complaint.stub(:find_by_name).with('turkeys').and_return(nil)
      Complaint.stub(:find_by_name).with('grass').and_return(grass_complaint)
      Complaint.stub(:find_by_name).with('rodents').and_return(rodent_complaint)

      resource.complaint_names = names
    end

    it "creates associations to complaints" do
      resource.complaints.should have(2).items
    end
  end
end
