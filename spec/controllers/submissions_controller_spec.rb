require 'spec_helper'

describe SubmissionsController do

  describe "POST to #create" do
    before(:each) { post :create, provider_params }

    it "creates a new submission" do
      response.code.should eq("201")
    end
  end
end
