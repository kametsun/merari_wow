class NftsController < ApplicationController
  skip_before_action :getUser, only: [:firstGacha, :show]
  def index
    @nfts = Nft.where.not(id: [2, 3])
  end

  def show
    getUser
    @nft = Nft.find(params[:id])

    # idが1と2のときだけtoken付与
    if @nft.id == 2
      cookies.delete(:user_id)
      sleep(2)
      # QRコード用にアカウント追加
      
      @user = User.new(name: "エンドユーザ#{User.all.size + 1}", token: 0)
      @user.save!
      # saveとレンダリングに時間がかかるから時間をおく
      sleep(2)
      cookies[:user_id] = @user.id

      @nft.update(user_id: @user.id)
      @user.token = @user.token + @nft.token
    end

    if @nft.id == 3
      cookies.delete(:user_id)
      sleep(2)
      # QRコード用にアカウント追加
      @user = createNewUser
      @nft.update(user_id: @user.id)
      @user.token = @user.token + @nft.token
    end
  end

  def firstGacha
    # 初回NFT付与
    nft = Nft.find(1)
    user = User.new(name: "エンドユーザ#{User.all.size + 1}", token: nft.token)
    user.save!
    nft.save!(user_id: user.id)
    # saveとレンダリングに時間がかかるから時間をおく
    sleep(2)
    cookies[:user_id] = user.id
    user.update(token: user.token + nft.token)
    redirect_to nft_path(nft.id)
  end
end