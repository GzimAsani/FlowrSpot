class SightingsController < ApplicationController 
  before_action :require_same_user, only: %i[destroy edit update]
  before_action :set_sighting, only: [:show, :update, :destroy]

  def index
    @sightings = Sighting.all
    
    render json: @sightings
  end

  def show
    render json: @sighting
  end

  def create
    @sighting = sighting.new(sighting_params)

    if @sighting.save
      render json: @sighting, status: :created, location: @sighting
    else
      render json: @sighting.errors, status: :unprocessable_entity
    end
  end

  def update
    if @sighting.update(sighting_params)
      render json: @sighting
    else
      render json: @sighting.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @sighting.destroy
  end


  private

    def set_sighting
      @sighting = Sighting.find(params[:id])
    end

    def require_same_user
      return unless current_user != @article.user
    end

    def sighting_params
      params.require(:sighting).permit(:longitude, :image, :latitude)
    end
end