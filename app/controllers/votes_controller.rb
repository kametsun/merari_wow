class VotesController < ApplicationController
  def index
    @users = User.all
  end

  def vote
    
  end
end
