class Api::V1::PostsController < ApplicationController
    
    before_action :find_post, only: [:show, :update, :destroy]
    
    def index
        posts = Post.all 
        render json: posts, include: [:user, :comments, :hashtags]
    end

    def show
        render json: @post
    end

    def update
        @post.update(post_params)
        render json: @post
    end

    def create
        post = Post.create(post_params)
        render json: post
    end

    def destroy
        @post.destroy
        render json: 'Post deleted'
    end

private

    def find_post
        @post = Post.find(params[:id])
    end

    def post_params
        params.require(:post).permit(:user_id, :caption, :image, :likes, :hashtags => [])
    end
end
