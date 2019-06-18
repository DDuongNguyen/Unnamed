class UsersController < ApplicationController
before_action :find_user, except: [:index]
before_action :all_user, only: [:index]

def index

end

def show

end

def edit

end



private
def find_user
  @user = User.find(params[:id])
end

def all_user
  @users = User.all
end


end
