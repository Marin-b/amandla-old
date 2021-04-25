# frozen_string_literal: true

class Search::SearchComponent < ViewComponent::Base
  def category
    session[:category] = params[:category] || session[:category] || "All categories"
  end

  def location
    session[:location] = params[:location] || session[:location] || ""
  end
end
