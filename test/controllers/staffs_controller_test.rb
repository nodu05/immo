require 'test_helper'

class StaffsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @staff = staffs(:one)
  end

  test "should get index" do
    get staffs_url
    assert_response :success
  end

  test "should get new" do
    get new_staff_url
    assert_response :success
  end

  test "should create staff" do
    assert_difference('Staff.count') do
      post staffs_url, params: { staff: { birth: @staff.birth, certificate_number: @staff.certificate_number, city: @staff.city, company_id: @staff.company_id, email: @staff.email, end_certificate_lifetime: @staff.end_certificate_lifetime, first_name: @staff.first_name, furigana_first_name: @staff.furigana_first_name, furigana_last_name: @staff.furigana_last_name, gender: @staff.gender, home_phone: @staff.home_phone, last_name: @staff.last_name, mobile_phone: @staff.mobile_phone, picture: @staff.picture, postal_code: @staff.postal_code, prefecture: @staff.prefecture, real_estate_notary: @staff.real_estate_notary, shooting_date: @staff.shooting_date, start_certificate_lifetime: @staff.start_certificate_lifetime, street: @staff.street } }
    end

    assert_redirected_to staff_url(Staff.last)
  end

  test "should show staff" do
    get staff_url(@staff)
    assert_response :success
  end

  test "should get edit" do
    get edit_staff_url(@staff)
    assert_response :success
  end

  test "should update staff" do
    patch staff_url(@staff), params: { staff: { birth: @staff.birth, certificate_number: @staff.certificate_number, city: @staff.city, company_id: @staff.company_id, email: @staff.email, end_certificate_lifetime: @staff.end_certificate_lifetime, first_name: @staff.first_name, furigana_first_name: @staff.furigana_first_name, furigana_last_name: @staff.furigana_last_name, gender: @staff.gender, home_phone: @staff.home_phone, last_name: @staff.last_name, mobile_phone: @staff.mobile_phone, picture: @staff.picture, postal_code: @staff.postal_code, prefecture: @staff.prefecture, real_estate_notary: @staff.real_estate_notary, shooting_date: @staff.shooting_date, start_certificate_lifetime: @staff.start_certificate_lifetime, street: @staff.street } }
    assert_redirected_to staff_url(@staff)
  end

  test "should destroy staff" do
    assert_difference('Staff.count', -1) do
      delete staff_url(@staff)
    end

    assert_redirected_to staffs_url
  end
end
