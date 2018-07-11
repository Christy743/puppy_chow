class DogsController < ApplicationController
  before_action :set_dog, only: [:show, :dog_foods, :update, :destroy]
  before_action :authenticate_user!

  def dog_foods
    @dog.dog_foods
  end

  # GET /dogs
  def index
    @dogs = @current_user.dogs
    #@dogs = Dog.all

    render json: @dogs
  end

  # GET /dogs/1
  def show
    #@dog_food = @dog.dog_foods.build
    render json: @dog, include: :dog_foods
  end

  # POST /dogs
  def create
    @dog = Dog.new(dog_params)

    if @dog.save
      render json: @dog, status: :created, location: @dog
    else
      render json: @dog.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /dogs/1
  def update
    if @dog.update(dog_params)
      render json: @dog
    else
      render json: @dog.errors, status: :unprocessable_entity
    end
  end

  # DELETE /dogs/1
  def destroy
    @dog.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dog
      @dog = @current_user.dogs.find(params[:id])
      #@dog = Dog.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def dog_params
      params.require(:dog).permit(:user_id, :name, :weight, :age)
    end
end
