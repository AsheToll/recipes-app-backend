class RecipesController < ApplicationController
    # GET /recipes
    def index
        recipes = Recipe.all
        render json: recipes.to_json(recipe_serializer)
    end
    # GET /recipes/1
    def show
        recipe = Recipe.find(params[:id])
        render json: recipe.to_json(recipe_serializer)
    end
    # POST /recipes
    def create
        recipe = Recipe.create(recipe_params)
        render json: recipe.to_json(recipe_serializer)
    end
    # PATCH /recipes/1
    def update
        recipe = Recipe.find(params[:id])
        recipe.update(recipe_params)
        render json: recipe.to_json(recipe_serializer)
    end
    # DELETE /recipes/1
    def destroy
        recipe = Recipe.find(params[:id])
        recipe.destroy
    end

    private

    def recipe_params
        params.require(:recipe).permit(:name, :image, :description, :steps)
    end

    def recipe_serializer
        {
            :include => {
                :foods => {only: :name}
            },
            :except => [:created_at, :updated_at]
        }
    end
end
