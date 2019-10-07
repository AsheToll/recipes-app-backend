class LikesController < ApplicationController
    def index
        likes = Like.all
        render json: likes.to_json(like_serializer)
    end

    def show
        like = Like.find_by(params[:id])
        render json: like.to_json(like_serializer)
    end

    def create
        like = Like.create(like_params)
        render json: like.to_json(like_serializer)
    end

    private

    def like_params
        params.require(:like).permit(:user_id, :recipe_id)
    end

    def like_serializer
        {
            except: [:created_at, :updated_at]
        }
    end
end
