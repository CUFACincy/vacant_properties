class SubmissionsController < ApplicationController

  respond_to :html

  def create
    submission = params[:FormStructure]
    redirect_to root_path
  end
end
