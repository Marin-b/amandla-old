class Places::Map < ViewComponent::Base
  def initialize(places)
    @places = places.includes(:category)
  end

  def markers
    @places.map do |place|
      { lng: place.longitude, lat: place.latitude, marker: marker(place), info_window: info_window(place) }
    end
  end

  private

  def marker(place)
    "
      <div id='marker-#{place.id}'class='category-marker'>
        #{render Category::Icon.new(place.category)}
      </div>
    "
  end

  def info_window(place)
    "
      <div class='w-72 h-32'>
        #{render Places::Card.new(card: place)}
      </div>
    "
  end
end
