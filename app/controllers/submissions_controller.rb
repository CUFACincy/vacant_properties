class SubmissionsController < ApplicationController

  respond_to :html
  expose(:submission) { Submission.new_from_provider(params) }

  def create
    submission.save
    redirect_to root_path
  end
end
