class Rating::Stars < ViewComponent::Base
  attr_reader  :rating
  def initialize(rating)
    @rating = rating
  end
end
