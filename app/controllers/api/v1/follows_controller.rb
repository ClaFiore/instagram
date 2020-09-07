class Api::V1::FollowsController < ApplicationController

    before_action :find_follow, only: [:show, :update, :destroy]
    
    def index
        follows = Follow.all 
        render json: follows
    end

    def show
        render json: @follow
    end

    def update
        @follow.update(follow_params)
        render json: @follow
    end

    def create
        follow = Follow.create(follow_params)
        render json: follow
    end

    def destroy
        @follow.destroy
        render json: 'follow deleted'
    end

private

    def find_follow
        @follow = Follow.find(params[:id])
    end

    def follow_params
        params.require(:follow).permit(:follower_id, :followee_id)
    end

end
