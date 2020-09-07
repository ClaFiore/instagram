class Api::V1::CommentsController < ApplicationController

    before_action :find_comment, only: [:show, :update, :destroy]
    
    def index
        comments = Comment.all 
        render json: comments
    end

    def show
        render json: @comment
    end

    def update
        @comment.update(comment_params)
        render json: @comment
    end

    def create
        comment = Comment.create(comment_params)
        render json: comment
    end

    def destroy
        @comment.destroy
        render json: 'comment deleted'
    end

private

    def find_comment
        @comment = Comment.find(params[:id])
    end

    def comment_params
        params.require(:comment).permit(:user_id, :post_id, :content)
    end

end
