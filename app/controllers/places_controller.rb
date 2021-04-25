class PlacesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index, :show ]

  def index
    @search = Search::SearchComponent.new
  end

  def show
    @place = Place.find(params[:id])
  end
end
