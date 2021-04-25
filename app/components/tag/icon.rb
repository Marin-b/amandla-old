class Tag::Icon < ViewComponent::Base
  attr_reader :tag, :options
  def initialize(tag, options = { classes: 'fa-lg'} )
    @tag = tag
    @options = options
  end

  def icon
    case(tag.name)
    when 'Plant based'
      return 'fas fa-leaf'
    when 'LGBT friendly'
      return 'fas fa-rainbow'
    when 'Women owned'
      return 'fas fa-venus'
    when 'Locally sourced'
      return 'fas fa-street-view'
    when 'Fair trade'
      return 'fas fa-handshake'
    when 'Organic'
      return 'fas fa-seedling'
    when 'Vegetarian'
      return 'fas fa-carrot'
    else
      return 'fas fa-question'
    end
  end
end
