class A2hsController < ApplicationController
  skip_before_action :authenticate_user!
  def discard
    session[:a2hs_discard] = DateTime.now
  end
end
