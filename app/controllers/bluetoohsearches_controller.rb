class BluetoohsearchesController < ApplicationController
  before_action :set_bluetoohsearch, only: [:show, :update, :destroy]

  # GET /bluetoohsearches
  def index
    @bluetoohsearches = Bluetoohsearch.all
    filter_by_query if params[:q]
    render json: @bluetoohsearches
  end

  # GET /bluetoohsearches/1
  def show
    render json: @bluetoohsearch
  end

  # POST /bluetoohsearches
  def create
    @bluetoohsearch = Bluetoohsearch.new(bluetoohsearch_params)

    if @bluetoohsearch.save
      render json: @bluetoohsearch, status: :created, location: @bluetoohsearch
    else
      render json: @bluetoohsearch.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /bluetoohsearches/1
  def update
    if @bluetoohsearch.update(bluetoohsearch_params)
      render json: @bluetoohsearch
    else
      render json: @bluetoohsearch.errors, status: :unprocessable_entity
    end
  end

  # DELETE /bluetoohsearches/1
  def destroy
    @bluetoohsearch.destroy
  end

  def filter_by_query
    @bluetoohsearches = @bluetoohsearches.ransack(rfidCode_cont: params[:q]).result  
  end 

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bluetoohsearch
      @bluetoohsearch = Bluetoohsearch.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def bluetoohsearch_params
      params.require(:bluetoohsearch).permit(:rfidCode)
    end
end
