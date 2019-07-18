class Api::V1::ExhibitsController < ApplicationController

  before_action :find_exhibit, only: %i[show]

  def index
    @exhibits = Exhibit.all
    render json: @exhibits
  end

  def show
    render json: @exhibit
  end

  private
  def find_exhibit
    @exhibit = Exhibit.find(params[:id])
  end
  
end
