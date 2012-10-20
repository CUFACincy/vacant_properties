require 'spec_helper'

describe Submission do
  let(:submission) { Submission.new_from_provider(provider_params) }

  describe ".new_from_provider" do
    it "instantiates a new instance" do
      submission.should be_new_record
    end

    it "sets the form_data" do
      submission.form_data.should_not be_empty
    end
  end

  describe "#street_address" do
    it "formats the address for geocoding" do
      submission.street_address.should == "11126 Kenwood Rd 45242"
    end
  end
end
