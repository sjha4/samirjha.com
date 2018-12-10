class ApplicationController < ActionController::Base
  before_action :set_comment, only: [:new_comment]
  def new_comment
      unlocked_params = ActiveSupport::HashWithIndifferentAccess.new(params.permit(:Name, :Comment, :ContactInfo))
      Comment.create(Name:params[:Name],Comment:params[:Comment],ContactInfo:params[:ContactInfo])

    redirect_to root_path
  end
  def show
    redirect_to root_path
  end

  def music
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_comment
    @comment = Comment.new
  end
end
