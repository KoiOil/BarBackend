class Api::V1::BarsController < ApplicationController 
  skip_before_filter  :verify_authenticity_token
  respond_to :json
  def create
  @bars = Bar.where("lat >= :lat0 AND lat <= :lat1 AND lon >= :lon0 AND lon <= :lon1", { lat0: params[:lat0], 
		lat1: params[:lat1], 
		lon0: params[:lon0], 
		lon1: params[:lon1]})
  
  render :json => @bars.all and return
  end
end
