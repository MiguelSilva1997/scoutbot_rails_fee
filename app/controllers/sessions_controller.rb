class SessionsController < ApplicationController
  skip_before_action :verify_authenticity_token
  # protect_from_forgery except: [:create]


  def new

  end

  def create
    @user = Login.new.login(login_params)
    session[:user] = @user
    if @user.role == "player"
      redirect_to player_profiles_path
    elsif !@user.role == "scout"
      redirect_to scout_profiles_path
    elsif !@user.role == "team"
      redirect_to team_profiles_path
    else
      redirect_to admin_dashboard
    end
  end

  private

  def login_params
    if request.env['omniauth.auth']
      request.env['omniauth.auth']
    else
      params.permit(session: [:email, :password])
    end
  end
end
