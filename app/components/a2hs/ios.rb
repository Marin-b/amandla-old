class A2hs::Ios < ViewComponent::Base
  def render?
    request.user_agent.include?('iPhone')
  end
end
