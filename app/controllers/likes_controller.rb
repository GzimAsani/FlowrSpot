class LikesController < ApplicationController 
 before_action :set_sighting, only: [:show, :destroy]
  def create
    @like = current_user.likes.new(sighting_id: params[:sighting_id])

    if @like.save
      render json: @sighting, status: :created, location: @sighting
    else
      render json: @like.errors, status: :unprocessable_entity
    end
  end

  def destroy
    like = Like.find_by(id: params[:id], user: current_user, sighting_id: params[:sighting_id])
    if like
      like.destroy
    end

  end
    private

      def set_sighting
        @sighting = Sighting.find(params[:id])
      end


end