class MerchantsController < ApplicationController
  def index
    @merchants = RailsEngineFacade.all_merchants
  end

  def show
    @merchant = RailsEngineFacade.merchant(params[:id])
    @items = RailsEngineFacade.merchants_items(params[:id])
  end
end