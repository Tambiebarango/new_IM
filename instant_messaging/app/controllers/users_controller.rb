class UsersController < ApplicationController

    def new
        @user = User.new()
    end

    def create
        @user = User.create(user_params)
        if @user.save
            flash[:success] = "You have successfully signed up"
            redirect_to 'index'
        else
            render 'new'
        end

    end

    private
    def user_params
        params.require(:users).permit(:username, :email, :password)
    end

end