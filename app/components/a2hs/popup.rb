class A2hs::Popup < ViewComponent::Base
  def call
    render A2hs::Ios.new
  end
end
