class FoodsController < ApplicationController
    def index
        foods = Food.all
        render json: foods.to_json(food_serializer)
    end
    
    def show
        food = Food.find(params[:id])
        render json: food.to_json(food_serializer)
    end

    private

    def food_serializer
        {
            except: [:created_at, :updated_at]
        }
    end
end
