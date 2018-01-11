class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :current_user

  helper_method :current_user, :player_profile, :scout_profile, :team_profile

  def current_user
    @current_user ||= CurrentUser.new(session[:user]) if session[:user]
  end

  def player_profile
    @player_profile ||= PlayerProfile.new(session[:user]['player_profile']) if session[:user]['player_profile']
  end

  def scout_profile
    @scout_profile ||= ScoutProfile.new(session[:user]['scout_profile']) if session[:user]['scout_profile']
  end

  def team_profile
    @team_profile ||= Team.new(session[:user]['teams'].first) if !session[:user]['teams'].empty?
  end
end
