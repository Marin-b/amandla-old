class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home, :offline ]

  def home; end

  def offline
    render 'offline', layout: false
  end
end
