class UsersController < ApplicationController
    def login
        
    end
    def show
        @user = User.find(params[:id])
    end
end
