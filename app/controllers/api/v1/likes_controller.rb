class Api::V1::LikesController < ApplicationController
    before_action :find_like, only: [:show, :update, :destroy]
    
    def index
        likes = Like.all 
        render json: likes
    end

    def show
        render json: @like
    end

    def update
        @like.update(like_params)
        render json: @like
    end

    def create
        like = Like.create(like_params)
        render json: like
    end

    def destroy
        @like.destroy
        render json: 'like deleted'
    end

private

    def find_like
        @like = Like.find(params[:id])
    end

    def like_params
        params.require(:like).permit(:user_id, :post_id)
    end

end


