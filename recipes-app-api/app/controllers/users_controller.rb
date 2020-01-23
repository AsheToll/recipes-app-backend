class UsersController < ApplicationController
    def index
        users = User.all
        if users
            render json: users.to_json(user_serializer)
        else
            render json: {
                status: 500,
                errors: ['no users found']
            }
        end
    end

    def show
        user = User.find_by(params[:id])
        if user
            render json: user.to_json(user_serializer)
        else
            render json: {
                status: 500,
                errors: ['user not found']
            }
        end
    end

    def create
        user = User.create(user_params)
        if user.save
            login!
            render json: user.to_json(user_serializer)
        else
            render json: {
                status: 500,
                errors: user.errors.full_messages
            }
        end
    end

    def update
    end

    def destroy
    end

    private

    def user_params
        params.require(:user).permit(:name, :diet, :username, :email, :password, :password_confirmation)
    end

    def user_serializer
        {
            except: [:created_at, :updated_at]
        }
    end
end
