class SubmissionsController < ApplicationController
  helper_method :resources
  respond_to :html

  def create
    submission = Submission.new_from_provider(params)
    submission.process
    render text: 'ok', status: :created
  end

  def show
    submission = Submission.find_by_wufoo_entry_id(params[:id])
    @resources = Locality.find_by_name(submission.locality).resources
  end

  private
  def resources
    @resources
  end
end

