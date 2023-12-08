class UsersController < ApplicationController
    before_action :clearCooki, only: :login
    skip_before_action :getUser, only: :login
    def login
        
    end

    def show
    end

    def clearCooki
        cookies.delete(:user_id)
    end
end
