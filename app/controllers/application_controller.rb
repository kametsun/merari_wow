class ApplicationController < ActionController::Base
    before_action :getUser
    
    def getUser
        if cookies[:user_id].present?
            @user = User.find(cookies[:user_id])
            redirect_to root_path unless @user
        else
            redirect_to login_path
        end
    end
end
