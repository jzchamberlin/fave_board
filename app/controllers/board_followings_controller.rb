class BoardFollowingsController < ApplicationController
  def index
    @board_followings = BoardFollowing.all
  end

  def show
    @board_following = BoardFollowing.find(params[:id])
  end

  def new
    @board_following = BoardFollowing.new
  end

  def create
    @board_following = BoardFollowing.new
    @board_following.user_id = params[:user_id]
    @board_following.board_id = params[:board_id]

    if @board_following.save
      redirect_to "/board_followings", :notice => "Board following created successfully."
    else
      render 'new'
    end
  end

  def edit
    @board_following = BoardFollowing.find(params[:id])
  end

  def update
    @board_following = BoardFollowing.find(params[:id])

    @board_following.user_id = params[:user_id]
    @board_following.board_id = params[:board_id]

    if @board_following.save
      redirect_to "/board_followings", :notice => "Board following updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @board_following = BoardFollowing.find(params[:id])

    @board_following.destroy

    redirect_to "/board_followings", :notice => "Board following deleted."
  end
end
