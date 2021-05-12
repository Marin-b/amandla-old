class A2hs::Ios < ViewComponent::Base
  def render?
    request.headers.each do |key, v|
      p [key, v] if key.include?('HTTP')
      p "======"
    end
    request.user_agent.include?('iPhone')
  end
end
