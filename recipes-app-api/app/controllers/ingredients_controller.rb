class IngredientsController < ApplicationController
    def index
        ingredients = Ingredient.all
        render json: ingredients.to_json(ingredient_serializer)
    end
    
    def show
        ingredient = Ingredient.find(params[:id])
        render json: ingredient.to_json(ingredient_serializer)
    end

    private

    def ingredient_serializer
        {
            except: [:created_at, :updated_at]
        }
    end
end
