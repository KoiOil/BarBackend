class DowsController < ApplicationController
  before_action :set_dow, only: [:show, :edit, :update, :destroy]

  # GET /dows
  # GET /dows.json
  def index
    @dows = Dow.all
  end

  # GET /dows/1
  # GET /dows/1.json
  def show
  end

  # GET /dows/new
  def new
    @dow = Dow.new
  end

  # GET /dows/1/edit
  def edit
  end

  # POST /dows
  # POST /dows.json
  def create
    @dow = Dow.new(dow_params)

    respond_to do |format|
      if @dow.save
        format.html { redirect_to @dow, notice: 'Dow was successfully created.' }
        format.json { render :show, status: :created, location: @dow }
      else
        format.html { render :new }
        format.json { render json: @dow.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dows/1
  # PATCH/PUT /dows/1.json
  def update
    respond_to do |format|
      if @dow.update(dow_params)
        format.html { redirect_to @dow, notice: 'Dow was successfully updated.' }
        format.json { render :show, status: :ok, location: @dow }
      else
        format.html { render :edit }
        format.json { render json: @dow.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dows/1
  # DELETE /dows/1.json
  def destroy
    @dow.destroy
    respond_to do |format|
      format.html { redirect_to dows_url, notice: 'Dow was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dow
      @dow = Dow.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def dow_params
      params.require(:dow).permit(:specialid, :day)
    end
end
