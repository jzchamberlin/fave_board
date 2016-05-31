class UserFollowingsController < ApplicationController
  def index
    @user_followings = UserFollowing.all
  end

  def show
    @user_following = UserFollowing.find(params[:id])
  end

  def new
    @user_following = UserFollowing.new
  end

  def create
    @user_following = UserFollowing.new
    @user_following.following_id = params[:following_id]
    @user_following.user_id = params[:user_id]

    if @user_following.save
      redirect_to "/user_followings", :notice => "User following created successfully."
    else
      render 'new'
    end
  end

  def edit
    @user_following = UserFollowing.find(params[:id])
  end

  def update
    @user_following = UserFollowing.find(params[:id])

    @user_following.following_id = params[:following_id]
    @user_following.user_id = params[:user_id]

    if @user_following.save
      redirect_to "/user_followings", :notice => "User following updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @user_following = UserFollowing.find(params[:id])

    @user_following.destroy

    redirect_to "/user_followings", :notice => "User following deleted."
  end
end
