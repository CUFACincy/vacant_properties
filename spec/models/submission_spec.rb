require 'spec_helper'

describe Submission do
  describe ".new_from_provider" do
    let(:submission) { Submission.new_from_provider(provider_params) }

    it "instantiates a new instance" do
      submission.should be_new_record
    end

    it "sets the form_data" do
      submission.form_data.should_not be_empty
    end
  end
end
