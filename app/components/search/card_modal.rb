class Search::CardModal < ViewComponent::Base
  attr_reader :name, :value

  def initialize(name, value)
    @name = name
    @value = value
  end

  def item_class
    is_tags? ? ActsAsTaggableOn::Tag : Category
  end

  def items
    @items ||= item_class.all
  end

  def icon(item)
    is_tags? ? Tag::Icon.new(item) : Category::Icon.new(item)
  end

  def input_name
    is_tags? ? 'tags[]' : 'category'
  end

  def is_selected?(item)
    is_tags? ? value.include?(item.name) : value == item.name
  end

  def input_type
     is_tags? ?  'checkbox' : 'radio'
  end

  def none_chosen?
    value.split(" ").first == "All"
  end

  private

  def is_tags?
    name == 'tags'
  end
end
