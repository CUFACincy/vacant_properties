class SubmissionsController < ApplicationController
  helper_method :resources, :submission
  respond_to :html, :json

  expose(:resources) { submission.resources }

  def create
    submission = Submission.new_from_provider(params)
    submission.process
    render text: 'ok', status: :created
  end

  def show
    respond_to do |format|
      if submission.present?
        response.headers['Link'] = "<#{thank_you_path(submission)}>; rel='self'"
        format.html
        format.json { render json: {exists: true}, status: :ok }
      else
        format.html { redirect_to "/waiting/#{params[:id]}" }
        format.json { render json: {}, status: :not_found }
      end
    end
  end

  def wait
  end

  private

  def submission
    @submission ||= Submission.find_by_wufoo_entry_id(params[:id])
  end
end

