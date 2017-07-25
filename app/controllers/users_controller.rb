class UsersController < ApplicationController
    skip_before_filter :require_login, only: [:new, :create]
    
    # GET /signup
    def new
        @user = User.new
    end
    
    # POST /users
    def create
        @user = User.new(user_params)
        
        if @user.save
            redirect_to root_url
            else
            render action: :new
        end
    end
    
    private
    
    def user_params
        params.require(:user).permit(:email, :password, :password_confirmation)
    end
end
