class PlacesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index ]

  def index
    @places = Place.includes([banner_attachment: :blob]).includes(:category).all

    @places = @places.near(params[:location]) if params[:location].present?
    @places = @places.joins(:category).where('categories.name = ?', params[:category]) if params[:category] != 'All categories'
  end
end
