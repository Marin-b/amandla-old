# frozen_string_literal: true

class Search::SearchComponent < ViewComponent::Base

  def category
    params[:category] || "All categories"
  end

  def location
    params[:location] || ""
  end
end
