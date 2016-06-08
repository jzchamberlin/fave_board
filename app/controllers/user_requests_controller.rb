class UserRequestsController < ApplicationController
  def index
    @user_requests = UserRequest.all
  end

  def show
    @user_request = UserRequest.find(params[:id])
  end

  def new
    @user_request = UserRequest.new
  end

  def create
    @user_request = UserRequest.new
    @user_request.send_id = params[:send_id]
    @user_request.receiver_id = params[:receiver_id]

    if @user_request.save
      redirect_to "/user_requests", :notice => "User request created successfully."
    else
      render 'new'
    end
  end

  def edit
    @user_request = UserRequest.find(params[:id])
  end

  def update
    @user_request = UserRequest.find(params[:id])

    @user_request.send_id = params[:send_id]
    @user_request.receiver_id = params[:receiver_id]

    if @user_request.save
      redirect_to "/user_requests", :notice => "User request updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @user_request = UserRequest.find(params[:id])

    @user_request.destroy

    redirect_to "/user_requests", :notice => "User request deleted."
  end
end
