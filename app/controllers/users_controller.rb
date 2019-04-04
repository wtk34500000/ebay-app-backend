class UsersController < ApplicationController

    def index
        @users=User.all
        render json: @users
    end

    def create
        @user = User.create(user_params)
        if @user.valid?
          render json: { user: UserSerializer.new(@user) }, status: :created
        else
          render json: { error: 'failed to create user' }, status: :not_acceptable
        end
      end

    private
    def user_params
        params.require(:user).permit(:first_name, :last_name, :user_name, :password, :email)
    end
end