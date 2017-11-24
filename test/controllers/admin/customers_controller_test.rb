require 'test_helper'

class Admin::CustomersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @admin_customer = admin_customers(:one)
  end

  test "should get index" do
    get admin_customers_url
    assert_response :success
  end

  test "should get new" do
    get new_admin_customer_url
    assert_response :success
  end

  test "should create admin_customer" do
    assert_difference('Admin::Customer.count') do
      post admin_customers_url, params: { admin_customer: { birth: @admin_customer.birth, city: @admin_customer.city, email: @admin_customer.email, first_name: @admin_customer.first_name, furigana_first_name: @admin_customer.furigana_first_name, furigana_last_name: @admin_customer.furigana_last_name, gender: @admin_customer.gender, home_phone: @admin_customer.home_phone, last_name: @admin_customer.last_name, mobile_phone: @admin_customer.mobile_phone, postal_code: @admin_customer.postal_code, prefecture: @admin_customer.prefecture, street: @admin_customer.street } }
    end

    assert_redirected_to admin_customer_url(Admin::Customer.last)
  end

  test "should show admin_customer" do
    get admin_customer_url(@admin_customer)
    assert_response :success
  end

  test "should get edit" do
    get edit_admin_customer_url(@admin_customer)
    assert_response :success
  end

  test "should update admin_customer" do
    patch admin_customer_url(@admin_customer), params: { admin_customer: { birth: @admin_customer.birth, city: @admin_customer.city, email: @admin_customer.email, first_name: @admin_customer.first_name, furigana_first_name: @admin_customer.furigana_first_name, furigana_last_name: @admin_customer.furigana_last_name, gender: @admin_customer.gender, home_phone: @admin_customer.home_phone, last_name: @admin_customer.last_name, mobile_phone: @admin_customer.mobile_phone, postal_code: @admin_customer.postal_code, prefecture: @admin_customer.prefecture, street: @admin_customer.street } }
    assert_redirected_to admin_customer_url(@admin_customer)
  end

  test "should destroy admin_customer" do
    assert_difference('Admin::Customer.count', -1) do
      delete admin_customer_url(@admin_customer)
    end

    assert_redirected_to admin_customers_url
  end
end
