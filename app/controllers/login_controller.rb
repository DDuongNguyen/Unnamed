# frozen_string_literal: true

class LoginController < ApplicationController
  skip_before_action :authorized?, only: [:new, :create]

  def new
  end

  def create
    @user = User.find_by(user_name: params[:user_name])
    if @user && @user.authenticate(params[:password])
      flash[:messages] = "YOU ARE LOGGED IN"
      session[:user_id] = @user.id
      redirect_to '/events'
    else
      flash[:messages] = 'INCORRECT USERNAME/PASSWORD'
      redirect_to '/login/new'
    end
  end

  def destroy
    logout
    redirect_to "/events"
  end

end
