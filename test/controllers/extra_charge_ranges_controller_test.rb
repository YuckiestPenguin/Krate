require 'test_helper'

class ExtraChargeRangesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @extra_charge_range = extra_charge_ranges(:one)
  end

  test "should get index" do
    get extra_charge_ranges_url
    assert_response :success
  end

  test "should get new" do
    get new_extra_charge_range_url
    assert_response :success
  end

  test "should create extra_charge_range" do
    assert_difference('ExtraChargeRange.count') do
      post extra_charge_ranges_url, params: { extra_charge_range: { description: @extra_charge_range.description, name: @extra_charge_range.name } }
    end

    assert_redirected_to extra_charge_range_url(ExtraChargeRange.last)
  end

  test "should show extra_charge_range" do
    get extra_charge_range_url(@extra_charge_range)
    assert_response :success
  end

  test "should get edit" do
    get edit_extra_charge_range_url(@extra_charge_range)
    assert_response :success
  end

  test "should update extra_charge_range" do
    patch extra_charge_range_url(@extra_charge_range), params: { extra_charge_range: { description: @extra_charge_range.description, name: @extra_charge_range.name } }
    assert_redirected_to extra_charge_range_url(@extra_charge_range)
  end

  test "should destroy extra_charge_range" do
    assert_difference('ExtraChargeRange.count', -1) do
      delete extra_charge_range_url(@extra_charge_range)
    end

    assert_redirected_to extra_charge_ranges_url
  end
end
