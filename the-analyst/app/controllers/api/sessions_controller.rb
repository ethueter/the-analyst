class Api::SessionsController < ApplicationController

    def create
    
        @user = User.find_by(username: params[:username])

        if @user && @user.authenticate(params[:password])
            token = JWT.encode({ user_id: @user.id}, ENV['SUPER_AWESOME_SECRET'], 'HS256')
            render json: { token: token, current_user_id: @user.id}, status: :ok
        else
            render json: { errors: ['Incorrect username or password']}, status: :unauthorized
        end
    
    end


end
