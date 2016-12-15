class SessionsController < ApplicationController
  def new
  end

  def create
    session[:name] = params[:name]
    redirect_to topics_path
  end
end

