class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def is_admin?
  	if current_user.admin
  		true
  	else
  		flash[:notice] = "You are not an admin"
  		redirect_to :root
  	end
  	
  end
end
