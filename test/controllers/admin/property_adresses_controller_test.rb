require 'test_helper'

class Admin::PropertyAdressesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @admin_property_adress = admin_property_adresses(:one)
  end

  test "should get index" do
    get admin_property_adresses_url
    assert_response :success
  end

  test "should get new" do
    get new_admin_property_adress_url
    assert_response :success
  end

  test "should create admin_property_adress" do
    assert_difference('Admin::PropertyAdress.count') do
      post admin_property_adresses_url, params: { admin_property_adress: { apartment_name: @admin_property_adress.apartment_name, buildingnumber: @admin_property_adress.buildingnumber, city: @admin_property_adress.city, prefecture: @admin_property_adress.prefecture, property_id: @admin_property_adress.property_id, roomnumber: @admin_property_adress.roomnumber, show_roomnumber: @admin_property_adress.show_roomnumber, show_street: @admin_property_adress.show_street, street: @admin_property_adress.street } }
    end

    assert_redirected_to admin_property_adress_url(Admin::PropertyAdress.last)
  end

  test "should show admin_property_adress" do
    get admin_property_adress_url(@admin_property_adress)
    assert_response :success
  end

  test "should get edit" do
    get edit_admin_property_adress_url(@admin_property_adress)
    assert_response :success
  end

  test "should update admin_property_adress" do
    patch admin_property_adress_url(@admin_property_adress), params: { admin_property_adress: { apartment_name: @admin_property_adress.apartment_name, buildingnumber: @admin_property_adress.buildingnumber, city: @admin_property_adress.city, prefecture: @admin_property_adress.prefecture, property_id: @admin_property_adress.property_id, roomnumber: @admin_property_adress.roomnumber, show_roomnumber: @admin_property_adress.show_roomnumber, show_street: @admin_property_adress.show_street, street: @admin_property_adress.street } }
    assert_redirected_to admin_property_adress_url(@admin_property_adress)
  end

  test "should destroy admin_property_adress" do
    assert_difference('Admin::PropertyAdress.count', -1) do
      delete admin_property_adress_url(@admin_property_adress)
    end

    assert_redirected_to admin_property_adresses_url
  end
end
