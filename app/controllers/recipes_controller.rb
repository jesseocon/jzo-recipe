class RecipesController < ApplicationController
  before_action :set_recipe, only: [:edit, :show, :update]
  def index
    @recipes = Recipe.all
  end

  def show
  end

  def new
    @recipe = Recipe.new
  end

  def create
    @recipe = Recipe.new(recipe_params)
    if @recipe.save
      redirect_to @recipe
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @recipe.update_attributes(recipe_params)
      redirect_to @recipe
    else
      render :edit
    end
  end

  def destroy

  end

  private 
    def set_recipe
      @recipe = Recipe.find(params[:id])
    end

    def recipe_params
      params.require(:recipe).permit(
        :name,
        :title,
        :serving_size,
        :cook_time,
        :description,
        :ingredients,
        :instructions,
        :image_url
      )
    end
end
