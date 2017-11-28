require 'test_helper'

class Admin::PropertyAreasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @admin_property_area = admin_property_areas(:one)
  end

  test "should get index" do
    get admin_property_areas_url
    assert_response :success
  end

  test "should get new" do
    get new_admin_property_area_url
    assert_response :success
  end

  test "should create admin_property_area" do
    assert_difference('Admin::PropertyArea.count') do
      post admin_property_areas_url, params: { admin_property_area: { alleyground_area: @admin_property_area.alleyground_area, alleyground_class: @admin_property_area.alleyground_class, balcony_area: @admin_property_area.balcony_area, building_area1: @admin_property_area.building_area1, building_area2: @admin_property_area.building_area2, building_area3: @admin_property_area.building_area3, construction_date: @admin_property_area.construction_date, coownership: @admin_property_area.coownership, coownership_area: @admin_property_area.coownership_area, development_area1: @admin_property_area.development_area1, development_area2: @admin_property_area.development_area2, driveway_area: @admin_property_area.driveway_area, driveway_burden: @admin_property_area.driveway_burden, driveway_part1: @admin_property_area.driveway_part1, driveway_part2: @admin_property_area.driveway_part2, firstfloor_area: @admin_property_area.firstfloor_area, land_area: @admin_property_area.land_area, measurement: @admin_property_area.measurement, occupied_area: @admin_property_area.occupied_area, occupied_area: @admin_property_area.occupied_area, otherfloor_area: @admin_property_area.otherfloor_area, privategarden_area: @admin_property_area.privategarden_area, property_id: @admin_property_area.property_id, secondfloor_area: @admin_property_area.secondfloor_area, setback_area: @admin_property_area.setback_area, setback_class: @admin_property_area.setback_class, setback_distance: @admin_property_area.setback_distance, subdivision: @admin_property_area.subdivision, terrace_area: @admin_property_area.terrace_area, thirdfloor_area: @admin_property_area.thirdfloor_area, total_area: @admin_property_area.total_area, totalfloor_area: @admin_property_area.totalfloor_area } }
    end

    assert_redirected_to admin_property_area_url(Admin::PropertyArea.last)
  end

  test "should show admin_property_area" do
    get admin_property_area_url(@admin_property_area)
    assert_response :success
  end

  test "should get edit" do
    get edit_admin_property_area_url(@admin_property_area)
    assert_response :success
  end

  test "should update admin_property_area" do
    patch admin_property_area_url(@admin_property_area), params: { admin_property_area: { alleyground_area: @admin_property_area.alleyground_area, alleyground_class: @admin_property_area.alleyground_class, balcony_area: @admin_property_area.balcony_area, building_area1: @admin_property_area.building_area1, building_area2: @admin_property_area.building_area2, building_area3: @admin_property_area.building_area3, construction_date: @admin_property_area.construction_date, coownership: @admin_property_area.coownership, coownership_area: @admin_property_area.coownership_area, development_area1: @admin_property_area.development_area1, development_area2: @admin_property_area.development_area2, driveway_area: @admin_property_area.driveway_area, driveway_burden: @admin_property_area.driveway_burden, driveway_part1: @admin_property_area.driveway_part1, driveway_part2: @admin_property_area.driveway_part2, firstfloor_area: @admin_property_area.firstfloor_area, land_area: @admin_property_area.land_area, measurement: @admin_property_area.measurement, occupied_area: @admin_property_area.occupied_area, occupied_area: @admin_property_area.occupied_area, otherfloor_area: @admin_property_area.otherfloor_area, privategarden_area: @admin_property_area.privategarden_area, property_id: @admin_property_area.property_id, secondfloor_area: @admin_property_area.secondfloor_area, setback_area: @admin_property_area.setback_area, setback_class: @admin_property_area.setback_class, setback_distance: @admin_property_area.setback_distance, subdivision: @admin_property_area.subdivision, terrace_area: @admin_property_area.terrace_area, thirdfloor_area: @admin_property_area.thirdfloor_area, total_area: @admin_property_area.total_area, totalfloor_area: @admin_property_area.totalfloor_area } }
    assert_redirected_to admin_property_area_url(@admin_property_area)
  end

  test "should destroy admin_property_area" do
    assert_difference('Admin::PropertyArea.count', -1) do
      delete admin_property_area_url(@admin_property_area)
    end

    assert_redirected_to admin_property_areas_url
  end
end
