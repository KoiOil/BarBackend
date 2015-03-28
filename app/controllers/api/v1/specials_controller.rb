class Api::V1::SpecialsController < ApplicationController
  respond_to :json
  def index
    time = Time.new
    puts time.strftime("%A")
    @special = Special.where('id IN(SELECT specialid FROM dows WHERE dows.sid)'
    render :json => @special.all and return
  end
end
