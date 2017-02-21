require 'test_helper'

class CarrierTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @carrier_type = carrier_types(:one)
  end

  test "should get index" do
    get carrier_types_url
    assert_response :success
  end

  test "should get new" do
    get new_carrier_type_url
    assert_response :success
  end

  test "should create carrier_type" do
    assert_difference('CarrierType.count') do
      post carrier_types_url, params: { carrier_type: { name: @carrier_type.name } }
    end

    assert_redirected_to carrier_type_url(CarrierType.last)
  end

  test "should show carrier_type" do
    get carrier_type_url(@carrier_type)
    assert_response :success
  end

  test "should get edit" do
    get edit_carrier_type_url(@carrier_type)
    assert_response :success
  end

  test "should update carrier_type" do
    patch carrier_type_url(@carrier_type), params: { carrier_type: { name: @carrier_type.name } }
    assert_redirected_to carrier_type_url(@carrier_type)
  end

  test "should destroy carrier_type" do
    assert_difference('CarrierType.count', -1) do
      delete carrier_type_url(@carrier_type)
    end

    assert_redirected_to carrier_types_url
  end
end
