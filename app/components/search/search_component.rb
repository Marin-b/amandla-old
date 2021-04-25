# frozen_string_literal: true

class Search::SearchComponent < ViewComponent::Base
  def category
    session[:category] = params[:category] || session[:category]
  end

  def location
    session[:location] = params[:location] || session[:location]
  end

  def tags
    session[:tags] = params[:tags] || session[:tags] || []
  end

  def places
    places = Place.includes([banner_attachment: :blob]).includes(:category).all

    places = places.near(params[:location]) if location.present?
    places = places.joins(:category).where('categories.name = ?', params[:category]) if category != 'All categories'
    places = places.tagged_with(tags.reject { |tag| tag == 'All tags' }, any: true) if tags != ['All tags']
    places
  end
end
