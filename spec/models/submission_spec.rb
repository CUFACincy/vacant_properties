require 'spec_helper'

describe Submission, :vcr do
  let(:submission) { Submission.new_from_provider(provider_params) }

  describe ".new_from_provider" do
    it "instantiates a new instance" do
      submission.should be_new_record
    end

    it "sets the form_data" do
      submission.form_data.should_not be_empty
    end
  end

  describe "#process" do
    before(:each) do
      FactoryGirl.create(:complaint, name: 'grass')
      submission.process
    end

    it "saves the record" do
      submission.should_not be_new_record
    end

    it "should record the Wofoo entry id" do
      submission.wufoo_entry_id.should == provider_params["EntryId"].to_i
    end

    it "creates associations with complaints" do
      submission.complaints.empty?.should == false
    end
  end

  describe "#set_geocoded" do
    let(:result) { 'This is something' }
    before(:each) { submission.set_geocoded(result) }

    it "updates the instance with the result" do
      submission.geo_info.should eq(result)
    end
  end

  describe "#street_address" do
    it "formats the address for geocoding" do
      submission.street_address.should == "11126 Kenwood Rd 45242"
    end
  end

  describe "#locality" do
    before(:each) do
      submission.process
    end

    it "returns the locality from the geocoded data" do
      submission.locality.should eq('Cincinnati')
    end
  end
end
