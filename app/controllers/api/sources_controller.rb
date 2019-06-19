class Api::SourcesController < ApplicationController

    def index
        @sources = Source.all
        render json: @sources, status: :successful
    end

    def show
        @source = Source.find(params[:id])
        @rating = source_rating(@source)
        @total = @source.articles.length
        render json: {rating: @rating, total: @total}, status: :successful
    end

    private

    def source_rating(source)
        @list= source.articles.map{|story| single_rating(story)}.flatten
        @list.sum/@list.length
    end

    def single_rating(story)

        story.user_articles.map{|x| x.rating}
    
    end

    
end
