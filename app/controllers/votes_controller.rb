class VotesController < ApplicationController
  def index
    @users = User.all
  end

  def create
    flash[:notice] = "投票完了しました!!"
    redirect_to nft_path(params[:id])
  end
end
