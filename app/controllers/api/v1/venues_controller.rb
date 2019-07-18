class Api::V1::VenuesController < ApplicationController
  def index
      @venues = Venue.all
      render json: @venues
  end

  def show
    @venue = Venue.find_by(id: params[:id])
  end
end
