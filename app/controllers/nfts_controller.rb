class NftsController < ApplicationController
  def index
    @nfts = Nft.all
  end

  def show
    @nft = Nft.find(params[:id])
  end

  def firstGacha
    User.find(1).token += 10
    redirect_to nft_path(Nft.find(1).id)
  end
end