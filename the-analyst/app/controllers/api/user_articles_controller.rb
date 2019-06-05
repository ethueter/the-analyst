class Api::UserArticlesController < ApplicationController
    before_action: authorize!

    def create
        @user_article = UserArticle.new(ua_params)
        if @user_article.save
            render json: @user_article, status: :successful
        else
            render json: {errors: @user_article.errors.full_messages}
        end
    end

    def update
    end

    private

    def ua_params
    
        params.permit(:user_id, :article_id, :rating, :favorite, :visable)
    
    end
end
