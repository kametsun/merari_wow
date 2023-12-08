class VotesController < ApplicationController
  def index
    @votes = Vote.all
  end

  def create
    if cookies[:user_id].present?
      @user = User.find(cookies[:user_id])
    end
    @user.update(token: @user.token - 1)
    @vote = Vote.find(params[:id])
    session[:vote_id] = @vote.id
    flash[:notice] = "投票完了しました!!"
    redirect_to result_path
  end

  def result
    @vote = Vote.find(session[:vote_id])
  end
end
