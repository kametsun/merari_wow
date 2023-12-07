class NftsController < ApplicationController
  def index
    @nfts = Nft.all
  end

  def show
    @nft = Nft.find(params[:id])
  end
end
