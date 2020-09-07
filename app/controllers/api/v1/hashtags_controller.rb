class Api::V1::HashtagsController < ApplicationController

    before_action :find_hashtag, only: [:show, :update, :destroy]
    
    def index
        hashtags = Hashtag.all 
        render json: hashtags
    end

    def show
        render json: @hashtag
    end

    def update
        @hashtag.update(hashtag_params)
        render json: @hashtag
    end

    def create
        hashtag = Hashtag.create(hashtag_params)
        render json: hashtag
    end

    def destroy
        @hashtag.destroy
        render json: 'hashtag deleted'
    end

private

    def find_comment
        @hashtag = Hashtag.find(params[:id])
    end

    def comment_params
        params.require(:hashtag).permit(:name)
    end

end
