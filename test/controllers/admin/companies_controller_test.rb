require 'test_helper'

class Admin::CompaniesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @admin_company = admin_companies(:one)
  end

  test "should get index" do
    get admin_companies_url
    assert_response :success
  end

  test "should get new" do
    get new_admin_company_url
    assert_response :success
  end

  test "should create admin_company" do
    assert_difference('Admin::Company.count') do
      post admin_companies_url, params: { admin_company: { city: @admin_company.city, email: @admin_company.email, end_time: @admin_company.end_time, inquiry_phone: @admin_company.inquiry_phone, license_number: @admin_company.license_number, main_phone: @admin_company.main_phone, name: @admin_company.name, open_time: @admin_company.open_time, postal_code: @admin_company.postal_code, prefecture: @admin_company.prefecture, regular_holiday: @admin_company.regular_holiday, street: @admin_company.street } }
    end

    assert_redirected_to admin_company_url(Admin::Company.last)
  end

  test "should show admin_company" do
    get admin_company_url(@admin_company)
    assert_response :success
  end

  test "should get edit" do
    get edit_admin_company_url(@admin_company)
    assert_response :success
  end

  test "should update admin_company" do
    patch admin_company_url(@admin_company), params: { admin_company: { city: @admin_company.city, email: @admin_company.email, end_time: @admin_company.end_time, inquiry_phone: @admin_company.inquiry_phone, license_number: @admin_company.license_number, main_phone: @admin_company.main_phone, name: @admin_company.name, open_time: @admin_company.open_time, postal_code: @admin_company.postal_code, prefecture: @admin_company.prefecture, regular_holiday: @admin_company.regular_holiday, street: @admin_company.street } }
    assert_redirected_to admin_company_url(@admin_company)
  end

  test "should destroy admin_company" do
    assert_difference('Admin::Company.count', -1) do
      delete admin_company_url(@admin_company)
    end

    assert_redirected_to admin_companies_url
  end
end
