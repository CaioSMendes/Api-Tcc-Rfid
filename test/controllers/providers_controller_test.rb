require 'test_helper'

class ProvidersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @provider = providers(:one)
  end

  test "should get index" do
    get providers_url, as: :json
    assert_response :success
  end

  test "should create provider" do
    assert_difference('Provider.count') do
      post providers_url, params: { provider: { business: @provider.business, cnpj: @provider.cnpj, codeProvider: @provider.codeProvider, corporateName: @provider.corporateName, email: @provider.email, fantasyName: @provider.fantasyName, phone: @provider.phone, stateRegistration: @provider.stateRegistration } }, as: :json
    end

    assert_response 201
  end

  test "should show provider" do
    get provider_url(@provider), as: :json
    assert_response :success
  end

  test "should update provider" do
    patch provider_url(@provider), params: { provider: { business: @provider.business, cnpj: @provider.cnpj, codeProvider: @provider.codeProvider, corporateName: @provider.corporateName, email: @provider.email, fantasyName: @provider.fantasyName, phone: @provider.phone, stateRegistration: @provider.stateRegistration } }, as: :json
    assert_response 200
  end

  test "should destroy provider" do
    assert_difference('Provider.count', -1) do
      delete provider_url(@provider), as: :json
    end

    assert_response 204
  end
end
