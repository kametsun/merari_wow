class VotesController < ApplicationController
  def index
    @votes = Vote.all
  end

  def create
    flash[:notice] = "投票完了しました!!"
    redirect_to root_path
  end
end
