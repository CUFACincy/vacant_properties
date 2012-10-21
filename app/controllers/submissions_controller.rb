class SubmissionsController < ApplicationController
  helper_method :resources, :submission
  respond_to :html

  def create
    submission = Submission.new_from_provider(params)
    submission.process
    render text: 'ok', status: :created
  end

  def show
    redirect_to "/waiting/#{params[:id]}" and return unless submission.present?
  end

  def wait
  end

  private

  def submission
    @submission ||= Submission.find_by_wufoo_entry_id(params[:id])
  end

  def resources
    @resources ||= Locality.find_by_name(submission.locality).resources
  end
end

