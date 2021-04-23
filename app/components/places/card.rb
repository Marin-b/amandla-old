class Places::Card < ViewComponent::Base
  attr_reader :place

  def initialize(card:)
    @place = card
  end
end
