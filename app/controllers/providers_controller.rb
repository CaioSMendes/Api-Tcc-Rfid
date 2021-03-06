class ProvidersController < ApplicationController
  before_action :set_provider, only: [:show, :update, :destroy]

  # GET /providers
  def index
    @providers = Provider.all
    filter_by_query if params[:q]
    render json: @providers
  end

  # GET /providers/1
  def show
    render json: @provider
  end

  # POST /providers
  def create
    @provider = Provider.new(provider_params)

    if @provider.save
      render json: @provider, status: :created, location: @provider
    else
      render json: @provider.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /providers/1
  def update
    if @provider.update(provider_params)
      render json: @provider
    else
      render json: @provider.errors, status: :unprocessable_entity
    end
  end

  # DELETE /providers/1
  def destroy
    @provider.destroy
  end

  def filter_by_query
    @providers = @providers.ransack(corporateName_or_fantasyName_cont: params[:q]).result  
  end 

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_provider
      @provider = Provider.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def provider_params
      params.require(:provider).permit(:corporateName, :fantasyName, :phone, :cnpj, :stateRegistration, :email, :business, :codeProvider)
    end
end
