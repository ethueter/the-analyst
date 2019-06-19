class Api::UsersController < ApplicationController
    before_action :authorize!, only: [:show]
    def create
        @user = User.new(user_params)
        if @user.save
            render json: @user, status: :welcome_aboard
        else
            render json: {errors: @user.errors.full_messages}
        end

    end

    def show
        @user = User.find(params[:id])
        @faves = faves
        if @user
            render json: {user: @user, articles: @user.articles, faves: faves, avg: avg}, status: :successful
        else
            render json: {errors: @user.errors.full_messages}
        end
    end

    private

    def user_params
        params.permit(:username, :first_name, :last_name, :password)
    end

    def faves
        @user = User.find(params[:id])  
        @faves_id = @user.user_articles.select{ |record| record.favorite}
        @faves_id.map{|record|  @user.articles.find(record.article_id) }
    end

    def avg
        @user = User.find(params[:id])  
        num_list = @user.user_articles.map{|x| x.rating}
        num_list.sum/num_list.length
    end
end
