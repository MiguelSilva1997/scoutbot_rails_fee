class UsersController < ApplicationController
  skip_before_action :verify_authenticity_token

  def new

  end

  def create
    @user = Login.new.create_user(user_params)
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

    def user_params
      params.permit(user: [:first_name, :last_name, :email, :password, :phone_number, :role])
    end

end
