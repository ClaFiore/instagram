class Api::V1::PostHashtagsController < ApplicationController

    before_action :find_post_hashtag, only: [:show, :update, :destroy]
    
    def index
        post_hashtags = PostHashtag.all 
        render json: post_hashtags
    end

    def show
        render json: @post_hashtag
    end

    def update
        @post_hashtag.update(post_hashtag_params)
        render json: @post_hashtag
    end

    def create
        post_hashtag = PostHashtag.create(post_hashtag_params)
        render json: post_hashtag
    end

    def destroy
        @post_hashtag.destroy
        render json: 'post_hashtag deleted'
    end

private

    def find_post_hashtag
        @post_hashtag = PostHashtag.find(params[:id])
    end

    def post_hashtag_params
        params.require(:post_hashtag).permit(:post_id, :hashtag_id)
    end

end
