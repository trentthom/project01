class PagesController < ApplicationController
  def home
    @destinations = Destination.all
  end


end
