class UsersController < ApplicationController
    def index
        
        render json: User.all
    end

    def create
        user = User.new(user_params)
        # replace the `user_attributes_here` with the actual attribute keys
        if user.save
            render json: user
        else
            render json: user.errors.full_messages, status: :unprocessable_entity
        end
    end

    def show
        user = User.find_by(id: params[:id])
        if user
            render json: user
        else
            render plain: "Could not find user"
    end

    def

    def user_params
        params.require(:user).permit(:name, :email)
    end
end