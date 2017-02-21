require 'test_helper'

class ShipmentCategoriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @shipment_category = shipment_categories(:one)
  end

  test "should get index" do
    get shipment_categories_url
    assert_response :success
  end

  test "should get new" do
    get new_shipment_category_url
    assert_response :success
  end

  test "should create shipment_category" do
    assert_difference('ShipmentCategory.count') do
      post shipment_categories_url, params: { shipment_category: { name: @shipment_category.name, shipment_type_id: @shipment_category.shipment_type_id } }
    end

    assert_redirected_to shipment_category_url(ShipmentCategory.last)
  end

  test "should show shipment_category" do
    get shipment_category_url(@shipment_category)
    assert_response :success
  end

  test "should get edit" do
    get edit_shipment_category_url(@shipment_category)
    assert_response :success
  end

  test "should update shipment_category" do
    patch shipment_category_url(@shipment_category), params: { shipment_category: { name: @shipment_category.name, shipment_type_id: @shipment_category.shipment_type_id } }
    assert_redirected_to shipment_category_url(@shipment_category)
  end

  test "should destroy shipment_category" do
    assert_difference('ShipmentCategory.count', -1) do
      delete shipment_category_url(@shipment_category)
    end

    assert_redirected_to shipment_categories_url
  end
end
