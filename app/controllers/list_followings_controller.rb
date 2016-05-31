class ListFollowingsController < ApplicationController
  def index
    @list_followings = ListFollowing.all
  end

  def show
    @list_following = ListFollowing.find(params[:id])
  end

  def new
    @list_following = ListFollowing.new
  end

  def create
    @list_following = ListFollowing.new
    @list_following.user_id = params[:user_id]
    @list_following.board_id = params[:board_id]
    @list_following.list_id = params[:list_id]

    if @list_following.save
      redirect_to "/list_followings", :notice => "List following created successfully."
    else
      render 'new'
    end
  end

  def edit
    @list_following = ListFollowing.find(params[:id])
  end

  def update
    @list_following = ListFollowing.find(params[:id])

    @list_following.user_id = params[:user_id]
    @list_following.board_id = params[:board_id]
    @list_following.list_id = params[:list_id]

    if @list_following.save
      redirect_to "/list_followings", :notice => "List following updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @list_following = ListFollowing.find(params[:id])

    @list_following.destroy

    redirect_to "/list_followings", :notice => "List following deleted."
  end
end
