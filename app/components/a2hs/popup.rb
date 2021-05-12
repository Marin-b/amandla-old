class A2hs::Popup < ViewComponent::Base
  def render?
    session[:a2hs_discard] ? (DateTime.parse(session[:a2hs_discard]) < DateTime.now - 7.days) : true
  end
end
