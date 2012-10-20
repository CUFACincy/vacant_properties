require 'spec_helper'

vcr_options = { :cassette_name => 'submission', :record => :new_episodes}

describe SubmissionsController, {vcr: vcr_options} do

  describe "POST to #create" do
    before(:each) do
      post :create, provider_params
    end

    it "creates a new submission" do
       response.code.should eq("201")
    end
  end
end
