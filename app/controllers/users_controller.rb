class UsersController < ApplicationController
skip_before_action :authorized?, only: [:new,:create]
before_action :find_user, except: [:index, :new, :create]
before_action :all_user, only: [:index]

def index

end

def show
  # if @user.id != @current_user.id
  #   redirect_to "/events"
  # end
end


def new
  @user = User.new
end

def create
 user = User.create(user_params)
 if user.valid?
   redirect_to events_path
 else
   flash[:errors] = user.errors.full_messages
   redirect_to new_user_path
 end
end

def edit

end

def update
  @user.update(edit_user_params)
  if @user.valid?
    redirect_to @user
  else
    flash[:errors] = @user.errors.full_messages
    redirect_to edit_user_path
  end
end

private
def find_user
  @user = User.find(params[:id])
end

def all_user
  @users = User.all
end

def user_params
  params.require(:user).permit(:name, :user_name, :password, :bio, :pic_url)
end

def edit_user_params
  params.require(:user).permit(:name, :user_name, :bio, :pic_url)
end


end
