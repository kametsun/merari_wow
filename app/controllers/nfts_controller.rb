class NftsController < ApplicationController
  skip_before_action :getUser, only: :firstGacha
  def index
    @nfts = Nft.all
  end

  def show
    @nft = Nft.find(params[:id])
  end

  def firstGacha
    user = User.new(name: "エンドユーザ#{User.all.size + 1}", token: 0)
    user.save!
    # saveとレンダリングに時間がかかるから時間をおく
    sleep(2)
    cookies[:user_id] = user.id

    user.update(token: user.token+10)
    redirect_to nft_path(Nft.find(1).id)
  end
end