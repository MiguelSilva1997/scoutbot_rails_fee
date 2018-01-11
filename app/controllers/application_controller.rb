class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :current_user, :player_profile

  helper_method :current_user, :player_profile

  def current_user
    @current_user ||= CurrentUser.new(session[:user]) if session[:user]
  end

  def player_profile
    @player_profile ||= PlayerProfile.new(session[:user]['player_profile']) if session[:user]
  end
end
