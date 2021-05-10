# frozen_string_literal: true

class Search::SearchComponent < ViewComponent::Base
  def category
    return @category if @category

    if params[:category] == 'clear'
      session.delete(:category)
    else
      session[:category] = params[:category] || session[:category]
    end

    @category = session[:category]
  end

  def location
    session[:location] = params[:location] || session[:location]
  end

  def tags
    return @tags if @tags

    if params[:tags] == ['clear']
      session.delete(:tags)
    else
      session[:tags] = params[:tags] || session[:tags]
    end

    @tags = session[:tags] || []
  end

  def places
    places = Place.includes([banner_attachment: :blob]).includes(:category).all

    places = places.near(location) if location.present?
    places = places.joins(:category).where('categories.name = ?', category) if category
    places = places.tagged_with(tags.reject { |tag| tag == 'clear' }, any: true) if tags != []
    places
  end
end
