class ApplicationController < ActionController::Base
    before_action :getUser
    
    def getUser
        if cookies[:user_id].present?
            @user = User.find(cookies[:user_id])
            redirect_to root_path unless @user
        else
            createNewUser
            redirect_to login_path
        end
    end

    def createNewUser
        user = User.new(name: "エンドユーザ#{User.all.size + 1}", token: 0)
        user.save!
        # saveとレンダリングに時間がかかるから時間をおく
        sleep(2)
        cookies[:user_id] = user.id
        return user
    end
end
