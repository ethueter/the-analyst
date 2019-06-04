class Api::ArticlesController < ApplicationController
    before_action: authorize!, only: [:create]

    def index
        @articles = Article.all 
        render json: @articles, status: :successful
    end

    def create(article_params)
        @article = Article.new(article_params)
        if @article.save
            render json: @article, status: :successful
        else
            render json: {errors: @article.errors.full_messages}, status: :unauthorized
        end
    
    end


    private

    def article_params
    
        params.permit[:title, :author, :content, :article_url, :image_url, :source_url]
    
    end
end
