class Api::V1::SpecialsController < ApplicationController
  respond_to :json
  def index
    time = Time.new
    @special = Special.where(
		["specials.barid = ?",params[:barid]]) 
    render :json => @special.all and return	
  end
end
