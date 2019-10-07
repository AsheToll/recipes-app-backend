class UsersController < ApplicationController
    def index
        users = User.all
        render json: users.to_json(user_serializer)
    end

    def show
        user = User.find_by(params[:id])
        render json: user.to_json(user_serializer)
    end

    def create
        user = User.create(user_params)
        render json: user.to_json(user_serializer)
    end

    def update
    end

    def destroy
    end

    private

    def user_params
        params.require(:user).permit(:name, :diet)
    end

    def user_serializer
        {
            except: [:created_at, :updated_at]
        }
    end
end
