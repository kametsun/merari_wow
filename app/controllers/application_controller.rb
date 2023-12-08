class ApplicationController < ActionController::Base
    before_action :getUser
    def getUser
        @user = User.find(1)
    end
end
