class ApplicationController < ActionController::Base
  before_action :setup
  before_action :authorized?

def setup
  @user_id = session[:user_id]
  @logged_in = !!@user_id
  if @logged_in
    @current_user = User.find(@user_id)
  end
end

def logout
  session[:user_id] = nil
end

def authorized?
  unless @logged_in
    redirect_to '/login/new'
  end
end






end
