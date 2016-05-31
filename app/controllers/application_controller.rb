class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  def authenticate
    if !signed_in?
      redirect_to new_session_path
    end
  end

  def signed_in?
    session[:current_email].present?
  end

  protect_from_forgery with: :exception
end
