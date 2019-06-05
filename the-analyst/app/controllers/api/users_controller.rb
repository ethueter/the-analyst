class Api::UsersController < ApplicationController

    def create
        @user = User.new(user_params)
        if @user.save
            render json: @user, status: :welcome_aboard
        else
            render json: {errors: @user.errors.full_messages}
        end

    end

    private

    def user_params
        params.permit(:username, :first_name, :last_name, :password)
    end
end
