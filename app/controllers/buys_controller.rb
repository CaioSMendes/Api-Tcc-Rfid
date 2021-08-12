class BuysController < ApplicationController
  before_action :set_buy, only: [:show, :update, :destroy]

  # GET /buys
  def index
    @buys = Buy.all

    render json: @buys
  end

  # GET /buys/1
  def show
    render json: @buy
  end

  # POST /buys
  def create
    @buy = Buy.new(buy_params)

    if @buy.save
      render json: @buy, status: :created, location: @buy
    else
      render json: @buy.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /buys/1
  def update
    if @buy.update(buy_params)
      render json: @buy
    else
      render json: @buy.errors, status: :unprocessable_entity
    end
  end

  # DELETE /buys/1
  def destroy
    @buy.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_buy
      @buy = Buy.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def buy_params
      params.require(:buy).permit(:price, :quantity, :dateBuy, :discount, :measurement, :description, :buy)
    end
end
