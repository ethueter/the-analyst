class Api::SourcesController < ApplicationController

    def index
        @sources = Source.all
        render json: @sources, status: :successful
    end
    
end
