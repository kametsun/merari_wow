class SamplesController < ApplicationController
  def show
    @nft = Nft.find(@params[:id])
  end
end
