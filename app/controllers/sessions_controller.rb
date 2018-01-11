class SessionsController < ApplicationController
  skip_before_action :verify_authenticity_token


  def new

  end

  def create
    @user = Login.new.login(login_params)
    session[:user] = @user
    if @user
      redirect_to user_path(@user.id)
    else
      redirect_to admin_dashboard
    end
  end

  def destroy
    session.clear
    redirect_to root_path
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
