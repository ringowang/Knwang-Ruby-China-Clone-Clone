#
module ApplicationHelper
  def current_user
    if session[:name]
      @current_user ||= User.find_by(name: session[:name])
    end
  end
end
