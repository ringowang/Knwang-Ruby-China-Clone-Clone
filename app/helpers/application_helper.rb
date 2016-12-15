module ApplicationHelper
  def current_user
    @current_user ||= User.find_by(name: session[:name]) if session[:name]
  end
end
