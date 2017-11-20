require 'test_helper'

class Admin::StaffsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @admin_staff = admin_staffs(:one)
  end

  test "should get index" do
    get admin_staffs_url
    assert_response :success
  end

  test "should get new" do
    get new_admin_staff_url
    assert_response :success
  end

  test "should create admin_staff" do
    assert_difference('Admin::Staff.count') do
      post admin_staffs_url, params: { admin_staff: { birth: @admin_staff.birth, certificate_number: @admin_staff.certificate_number, city: @admin_staff.city, company_id: @admin_staff.company_id, email: @admin_staff.email, end_certificate_lifetime: @admin_staff.end_certificate_lifetime, first_name: @admin_staff.first_name, furigana_first_name: @admin_staff.furigana_first_name, furigana_last_name: @admin_staff.furigana_last_name, gender: @admin_staff.gender, home_phone: @admin_staff.home_phone, last_name: @admin_staff.last_name, mobile_phone: @admin_staff.mobile_phone, picture: @admin_staff.picture, postal_code: @admin_staff.postal_code, prefecture: @admin_staff.prefecture, real_estate_notary: @admin_staff.real_estate_notary, shooting_date: @admin_staff.shooting_date, start_certificate_lifetime: @admin_staff.start_certificate_lifetime, street: @admin_staff.street } }
    end

    assert_redirected_to admin_staff_url(Admin::Staff.last)
  end

  test "should show admin_staff" do
    get admin_staff_url(@admin_staff)
    assert_response :success
  end

  test "should get edit" do
    get edit_admin_staff_url(@admin_staff)
    assert_response :success
  end

  test "should update admin_staff" do
    patch admin_staff_url(@admin_staff), params: { admin_staff: { birth: @admin_staff.birth, certificate_number: @admin_staff.certificate_number, city: @admin_staff.city, company_id: @admin_staff.company_id, email: @admin_staff.email, end_certificate_lifetime: @admin_staff.end_certificate_lifetime, first_name: @admin_staff.first_name, furigana_first_name: @admin_staff.furigana_first_name, furigana_last_name: @admin_staff.furigana_last_name, gender: @admin_staff.gender, home_phone: @admin_staff.home_phone, last_name: @admin_staff.last_name, mobile_phone: @admin_staff.mobile_phone, picture: @admin_staff.picture, postal_code: @admin_staff.postal_code, prefecture: @admin_staff.prefecture, real_estate_notary: @admin_staff.real_estate_notary, shooting_date: @admin_staff.shooting_date, start_certificate_lifetime: @admin_staff.start_certificate_lifetime, street: @admin_staff.street } }
    assert_redirected_to admin_staff_url(@admin_staff)
  end

  test "should destroy admin_staff" do
    assert_difference('Admin::Staff.count', -1) do
      delete admin_staff_url(@admin_staff)
    end

    assert_redirected_to admin_staffs_url
  end
end
