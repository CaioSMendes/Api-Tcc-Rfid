require 'test_helper'

class BuysControllerTest < ActionDispatch::IntegrationTest
  setup do
    @buy = buys(:one)
  end

  test "should get index" do
    get buys_url, as: :json
    assert_response :success
  end

  test "should create buy" do
    assert_difference('Buy.count') do
      post buys_url, params: { buy: { buy: @buy.buy, dateBuy: @buy.dateBuy, description: @buy.description, discount: @buy.discount, measurement: @buy.measurement, price: @buy.price, quantity: @buy.quantity } }, as: :json
    end

    assert_response 201
  end

  test "should show buy" do
    get buy_url(@buy), as: :json
    assert_response :success
  end

  test "should update buy" do
    patch buy_url(@buy), params: { buy: { buy: @buy.buy, dateBuy: @buy.dateBuy, description: @buy.description, discount: @buy.discount, measurement: @buy.measurement, price: @buy.price, quantity: @buy.quantity } }, as: :json
    assert_response 200
  end

  test "should destroy buy" do
    assert_difference('Buy.count', -1) do
      delete buy_url(@buy), as: :json
    end

    assert_response 204
  end
end
