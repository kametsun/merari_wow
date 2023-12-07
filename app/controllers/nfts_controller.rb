class NftsController < ApplicationController
  def index
    @nfts = Nft.all
  end

  def show
    @nft = Nft.find(params[:id])
  end

  def firstGacha
    redirect_to nft_path(Nft.find(1).id)
  end
end