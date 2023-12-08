class NftsController < ApplicationController
  skip_before_action :getUser, only: :firstGacha
  def index
    @nfts = Nft.where.not(id: [2, 3])
  end

  def show
    @nft = Nft.find(params[:id])

    # idが1と2のときだけtoken付与
    if @nft.id == 2
      cookies.delete(:user_id)
      sleep(2)
      # QRコード用にアカウント追加
      createNewUser
      @user.token = @user.token + @nft.token
      #@user.update
    end

    if @nft.id == 3
      cookies.delete(:user_id)
      sleep(2)
      # QRコード用にアカウント追加
      createNewUser

      @user.token = @user.token + @nft.token
      #@user.update
    end
  end

  def createNewUser
    user = User.new(name: "エンドユーザ#{User.all.size + 1}", token: 0)
    user.save!
    # saveとレンダリングに時間がかかるから時間をおく
    sleep(2)
    cookies[:user_id] = user.id
  end

  def firstGacha
    user = User.new(name: "エンドユーザ#{User.all.size + 1}", token: 0)
    user.save!
    # 初回NFT付与
    nft = Nft.find(1)
    nft.save!(user_id: user.id)
    # saveとレンダリングに時間がかかるから時間をおく
    sleep(2)
    cookies[:user_id] = user.id
    user.update(token: user.token + nft.token)
    redirect_to nft_path(nft.id)
  end
end