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

  describe "GET to #show" do
    context "without a submission" do
      before(:each) do
        get :show, id: 232232
      end

      it { should respond_with(:redirect) }
      it { should redirect_to('/waiting/232232') }
    end

    context "with a submission" do
      let(:submission) do
        s = Submission.new_from_provider(provider_params)
        s.process
      end

      before(:each) do
        Submission.stub(:find_by_wufoo_entry_id).and_return(submission)
        get :show, id: "22"
      end

      context "without a locality or resources" do
        it { should respond_with(:success) }
        it { should render_template(:show) }
      end
    end
  end
end
