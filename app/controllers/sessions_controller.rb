class SessionsController < ApplicationController
  skip_before_action :verify_authenticity_token

  def new

  end

  def create
    @user = Login.new.login(login_params)
    session[:user] = @user
    if !@user.player_profile.empty?
      redirect_to player_profiles_path
    elsif !@user.scout_profile.empty?
      redirect_to scout_profiles_path
    elsif !@user.teams.empty?
      redirect_to team_profiles_path
    else
      redirect_to admin_dashboard
    end
  end

  private

  def login_params
    params.permit(session: [:email, :password])
  end
end
