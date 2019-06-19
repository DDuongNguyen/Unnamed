class ResponsesController < ApplicationController

  def new
  end

  def create
    Response.create(event_id: params[:id], user_id: @current_user.id)
    redirect_to "/users/#{@current_user.id}"
  end

  def destroy
    # byebug
    rsvp = Response.find_by(event_id: params[:id], user_id: @current_user.id)
    rsvp.destroy
    redirect_to "/users/#{@current_user.id}"
  end

  private

  def response_params
    params.require(:response).permit(:user_id, :event_id)
  end

end
