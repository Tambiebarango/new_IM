class SessionsController < ApplicationController

    before_action :logged_in_redirect, only: [:new, :create]
    before_action :log_out_redirect, only:[:destroy]

    def new

    end

    def create
        user = User.find_by(username: params[:session][:username])
        if user && user.authenticate(params[:session][:password])
            session[:user_id] = user.id
            flash[:success] = "You have now been logged in!"
            redirect_to chatroom_path
        else
            flash.now[:error] = "Invalid credentials"
            render 'new'
        end
    end

    def destroy
        flash[:success] = "You have now been logged out"
        session[:user_id] = nil
        redirect_to root_path
    end

    private
    def logged_in_redirect
        if logged_in?
            flash[:error] = "You are already logged in!"
            redirect_to chatroom_path
        end
    end

    def log_out_redirect
        if !logged_in?
            flash[:error] = "You need to be logged in to performo that action!"
            redirect_to login_path
        end
    end
end