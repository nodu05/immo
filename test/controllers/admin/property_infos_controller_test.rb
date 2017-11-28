require 'test_helper'

class Admin::PropertyInfosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @admin_property_info = admin_property_infos(:one)
  end

  test "should get index" do
    get admin_property_infos_url
    assert_response :success
  end

  test "should get new" do
    get new_admin_property_info_url
    assert_response :success
  end

  test "should create admin_property_info" do
    assert_difference('Admin::PropertyInfo.count') do
      post admin_property_infos_url, params: { admin_property_info: { condition: @admin_property_info.condition, mediation_date: @admin_property_info.mediation_date, property_type1: @admin_property_info.property_type1, property_type2: @admin_property_info.property_type2, supplementary_explanation: @admin_property_info.supplementary_explanation, transaction_type: @admin_property_info.transaction_type } }
    end

    assert_redirected_to admin_property_info_url(Admin::PropertyInfo.last)
  end

  test "should show admin_property_info" do
    get admin_property_info_url(@admin_property_info)
    assert_response :success
  end

  test "should get edit" do
    get edit_admin_property_info_url(@admin_property_info)
    assert_response :success
  end

  test "should update admin_property_info" do
    patch admin_property_info_url(@admin_property_info), params: { admin_property_info: { condition: @admin_property_info.condition, mediation_date: @admin_property_info.mediation_date, property_type1: @admin_property_info.property_type1, property_type2: @admin_property_info.property_type2, supplementary_explanation: @admin_property_info.supplementary_explanation, transaction_type: @admin_property_info.transaction_type } }
    assert_redirected_to admin_property_info_url(@admin_property_info)
  end

  test "should destroy admin_property_info" do
    assert_difference('Admin::PropertyInfo.count', -1) do
      delete admin_property_info_url(@admin_property_info)
    end

    assert_redirected_to admin_property_infos_url
  end
end
