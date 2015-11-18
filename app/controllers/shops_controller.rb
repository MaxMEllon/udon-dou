class ShopsController < ApplicationController
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

  private

  def set_shop
    return unless params[:id]
    @shop = Shop.find(params[:id])
  end
end
