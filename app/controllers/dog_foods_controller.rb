class DogFoodsController < ApplicationController
  before_action :set_dog_food, only: [:show, :dogs, :update, :destroy]

  def dogs
    @dog_food.dogs
  end

  # GET /dog_foods
  def index
    @dog_foods = DogFood.all

    render json: @dog_foods
  end

  # GET /dog_foods/1
  def show
    render json: @dog_food
  end

  # POST /dog_foods
  def create
    @dog_food = DogFood.new(dog_food_params)

    if @dog_food.save
      render json: @dog_food, status: :created, location: @dog_food
    else
      render json: @dog_food.errors, status: :unprocessable_entity
    end
  end

  def dog
    @dog.dog_foods
  end

  # PATCH/PUT /dog_foods/1
  def update
    if @dog_food.update(dog_food_params)
      render json: @dog_food
    else
      render json: @dog_food.errors, status: :unprocessable_entity
    end
  end

  # DELETE /dog_foods/1
  def destroy
    @dog_food.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dog_food
      @dog_food = DogFood.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def dog_food_params
      params.require(:dog_food).permit(:user_id, :dog_id, :food_type, :cups, :can)
    end
end
