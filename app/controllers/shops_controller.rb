class ShopsController < ApplicationController
  before_action :authenticate_user!, only: :new

  def new
    @shop = Shop.new
    @hash = Gmaps4rails.build_markers(@shop) do |shop, marker|
      marker.lat shop.latitude
      marker.lng shop.longitude
      marker.infowindow shop.description
      marker.json(title: shop.name)
    end
  end

  def create
  end
end
