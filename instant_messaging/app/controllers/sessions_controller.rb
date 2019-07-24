class SessionsController < ApplicationController

    def new

    end

    def create
        user = User.find_by(username: params[:session][:username])
        if user && user.authenticate(params[:session][:password])
            session[:user_id] = user.id
            flash[:success] = "You have now been logged in!"
            redirect_to root_path
        else
            flash[:error] = "Invalid credentials"
            render 'new'
        end
    end
end