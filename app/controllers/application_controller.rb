class ApplicationController < ActionController::Base
   # before_action :authenticate_user!

  private

  def authenticate_active_admin_user
    unless current_user.admin?
      flash[:alert] = "You are not authorized to access this page."
      redirect_to(root_path)
    end
  end
end
