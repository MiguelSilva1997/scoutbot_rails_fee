class UsersController < ApplicationController
  skip_before_action :verify_authenticity_token

  def new

  end

  def create
    @user = Login.new.create_user(user_params)
    session[:user] = @user
    if @user
      redirect_to user_path(@user.id)
    else
      redirect_to admin_dashboard
    end
  end

  def show

  end

  def edit

  end

  def update
    @user = ScoutBot.new.update_user(user_params)
    session[:user] = @user
    if @user
      redirect_to user_path(@user.id)
    else
      redirect_to admin_dashboard
    end
  end

  private

    def user_params
      par = params.permit(user: [:first_name, :last_name, :email, :password, :phone_number, :role])
      par['id'] = current_user.id
      par
    end

end
