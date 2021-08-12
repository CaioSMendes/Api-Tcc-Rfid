require 'test_helper'

class BluetoohsearchesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @bluetoohsearch = bluetoohsearches(:one)
  end

  test "should get index" do
    get bluetoohsearches_url, as: :json
    assert_response :success
  end

  test "should create bluetoohsearch" do
    assert_difference('Bluetoohsearch.count') do
      post bluetoohsearches_url, params: { bluetoohsearch: { rfidCode: @bluetoohsearch.rfidCode } }, as: :json
    end

    assert_response 201
  end

  test "should show bluetoohsearch" do
    get bluetoohsearch_url(@bluetoohsearch), as: :json
    assert_response :success
  end

  test "should update bluetoohsearch" do
    patch bluetoohsearch_url(@bluetoohsearch), params: { bluetoohsearch: { rfidCode: @bluetoohsearch.rfidCode } }, as: :json
    assert_response 200
  end

  test "should destroy bluetoohsearch" do
    assert_difference('Bluetoohsearch.count', -1) do
      delete bluetoohsearch_url(@bluetoohsearch), as: :json
    end

    assert_response 204
  end
end
