class FlowersController < ApplicationController 

  before_action :set_flower, only: [:show]

  def index
    @flowers = Flower.all
    
    render json: @flowers
  end

  def show
    render json: @flower.sightings.order(created_at: :desc)
  end

  private

    def set_flower
      @flower = Flower.find(params[:id])
    end

    def flower_params
      params.require(:flower).permit(:name, :image, :description)
    end

end