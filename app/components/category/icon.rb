# frozen_string_literal: true

class Category::Icon < ViewComponent::Base
  attr_reader :category, :options

  def initialize(category, options = { classes: 'fa-lg'} )
    @category = category
    @options = options
  end

  def icon_class
    case(category.name)
    when 'Bar'
      return 'fas fa-glass-martini-alt'
    when 'Restaurant'
      return 'fas fa-utensils'
    when 'Cafe'
      return 'fas fa-coffee'
    when 'Groceries'
      return 'fas fa-shopping-cart'
    when 'Clothing and Fabrics'
      return 'fas fa-tshirt'
    when 'Beauty and Wellness'
      return 'fas fa-spa'
    else
      return 'fas fa-question'
    end
  end
end
