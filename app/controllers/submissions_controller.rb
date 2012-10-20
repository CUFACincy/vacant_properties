class SubmissionsController < ApplicationController

  respond_to :html
  expose(:submission) { Submission.new_from_provider(params) }

  def create
    submission.save
    render text: 'ok', status: :created
  end
end

