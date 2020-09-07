class Api::V1::UsersController < ApplicationController
    
    before_action :find_user, only: [:show, :update, :destroy, :followees, :followers]
    
    def index
        users = User.all
        render json: users
    end

    def show
        render json: @user
    end

    def create
        user = User.create(user_params)
        render json: user
    end

    def update
        @user.update(user_params)
        render json: @user
    end

    def destroy
        @user.destroy
        render json: 'User destroyed'
    end


    def followees
        @followees = @user.followees.uniq
      end
    
      def followers
        @followers = @user.followers.uniq
      end

private

    def find_user
        @user = User.find(params[:id])
    end

    def user_params
        params.require(:user).permit(:username, :email, :bio, :password, :profilepic, :name)
    end
    
end
