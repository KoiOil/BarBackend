class Api::V1::SpecialsController < ApplicationController
  skip_before_filter  :verify_authenticity_token
  respond_to :json
  def create
    time = Time.new
    @special = Special.where(
		["specials.barid = ?",params[:barid]]) 
    render :json => @special.all and return	
  end
end
