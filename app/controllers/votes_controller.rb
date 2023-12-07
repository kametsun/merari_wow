class VotesController < ApplicationController
  def index
    @users = User.all
  end
end
