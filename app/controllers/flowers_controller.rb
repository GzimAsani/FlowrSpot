class FlowersController < ApplicationController 

  before_action :set_flower, only: [:show]

  def index
    @flowers = Flower.all
    
    render json: @flowers
  end

  def show
    render json: @flower
  end

  # POST /cities
  def create
    @flower = Flower.new(flower_params)

    if @flower.save
      render json: @flower, status: :created, location: @flower
    else
      render json: @flower.errors, status: :unprocessable_entity
    end
  end

  private

    def set_flower
      @flower = Flower.find(params[:id])
    end

    def flower_params
      params.require(:flower).permit(:name, :image, :description)
    end

end