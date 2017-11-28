require 'test_helper'

class Admin::PropertyDetailsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @admin_property_detail = admin_property_details(:one)
  end

  test "should get index" do
    get admin_property_details_url
    assert_response :success
  end

  test "should get new" do
    get new_admin_property_detail_url
    assert_response :success
  end

  test "should create admin_property_detail" do
    assert_difference('Admin::PropertyDetail.count') do
      post admin_property_details_url, params: { admin_property_detail: { _site: @admin_property_detail._site, architectural_condition: @admin_property_detail.architectural_condition, buildingcertification: @admin_property_detail.buildingcertification, buildingcertification_number: @admin_property_detail.buildingcertification_number, buildingcoverage_ratio: @admin_property_detail.buildingcoverage_ratio, connecting_road: @admin_property_detail.connecting_road, consumption_tax: @admin_property_detail.consumption_tax, contact_distance1: @admin_property_detail.contact_distance1, contact_distance2: @admin_property_detail.contact_distance2, contact_distance3: @admin_property_detail.contact_distance3, contact_distance4: @admin_property_detail.contact_distance4, designation_road1: @admin_property_detail.designation_road1, designation_road2: @admin_property_detail.designation_road2, designation_road3: @admin_property_detail.designation_road3, designation_road4: @admin_property_detail.designation_road4, fee_amount: @admin_property_detail.fee_amount, fee_part: @admin_property_detail.fee_part, floorarea_ratio: @admin_property_detail.floorarea_ratio, floorarea_restriction: @admin_property_detail.floorarea_restriction, homeowner_association: @admin_property_detail.homeowner_association, land_title: @admin_property_detail.land_title, law_restriction: @admin_property_detail.law_restriction, move_date: @admin_property_detail.move_date, nationalland_law: @admin_property_detail.nationalland_law, optimum: @admin_property_detail.optimum, paved_road: @admin_property_detail.paved_road, price: @admin_property_detail.price, property_id: @admin_property_detail.property_id, rebuilding: @admin_property_detail.rebuilding, register_landcategory: @admin_property_detail.register_landcategory, remuneration: @admin_property_detail.remuneration, road_class1: @admin_property_detail.road_class1, road_class2: @admin_property_detail.road_class2, road_class3: @admin_property_detail.road_class3, road_class4: @admin_property_detail.road_class4, road_direction1: @admin_property_detail.road_direction1, road_direction2: @admin_property_detail.road_direction2, road_direction3: @admin_property_detail.road_direction3, road_direction4: @admin_property_detail.road_direction4, road_width1: @admin_property_detail.road_width1, road_width2: @admin_property_detail.road_width2, road_width3: @admin_property_detail.road_width3, road_width4: @admin_property_detail.road_width4, situation: @admin_property_detail.situation, situation_date: @admin_property_detail.situation_date, situation_landcategory: @admin_property_detail.situation_landcategory, terrain: @admin_property_detail.terrain, town_plan: @admin_property_detail.town_plan, transfer: @admin_property_detail.transfer, transfer_date: @admin_property_detail.transfer_date, zoning1: @admin_property_detail.zoning1, zoning2: @admin_property_detail.zoning2, zoning_district: @admin_property_detail.zoning_district } }
    end

    assert_redirected_to admin_property_detail_url(Admin::PropertyDetail.last)
  end

  test "should show admin_property_detail" do
    get admin_property_detail_url(@admin_property_detail)
    assert_response :success
  end

  test "should get edit" do
    get edit_admin_property_detail_url(@admin_property_detail)
    assert_response :success
  end

  test "should update admin_property_detail" do
    patch admin_property_detail_url(@admin_property_detail), params: { admin_property_detail: { _site: @admin_property_detail._site, architectural_condition: @admin_property_detail.architectural_condition, buildingcertification: @admin_property_detail.buildingcertification, buildingcertification_number: @admin_property_detail.buildingcertification_number, buildingcoverage_ratio: @admin_property_detail.buildingcoverage_ratio, connecting_road: @admin_property_detail.connecting_road, consumption_tax: @admin_property_detail.consumption_tax, contact_distance1: @admin_property_detail.contact_distance1, contact_distance2: @admin_property_detail.contact_distance2, contact_distance3: @admin_property_detail.contact_distance3, contact_distance4: @admin_property_detail.contact_distance4, designation_road1: @admin_property_detail.designation_road1, designation_road2: @admin_property_detail.designation_road2, designation_road3: @admin_property_detail.designation_road3, designation_road4: @admin_property_detail.designation_road4, fee_amount: @admin_property_detail.fee_amount, fee_part: @admin_property_detail.fee_part, floorarea_ratio: @admin_property_detail.floorarea_ratio, floorarea_restriction: @admin_property_detail.floorarea_restriction, homeowner_association: @admin_property_detail.homeowner_association, land_title: @admin_property_detail.land_title, law_restriction: @admin_property_detail.law_restriction, move_date: @admin_property_detail.move_date, nationalland_law: @admin_property_detail.nationalland_law, optimum: @admin_property_detail.optimum, paved_road: @admin_property_detail.paved_road, price: @admin_property_detail.price, property_id: @admin_property_detail.property_id, rebuilding: @admin_property_detail.rebuilding, register_landcategory: @admin_property_detail.register_landcategory, remuneration: @admin_property_detail.remuneration, road_class1: @admin_property_detail.road_class1, road_class2: @admin_property_detail.road_class2, road_class3: @admin_property_detail.road_class3, road_class4: @admin_property_detail.road_class4, road_direction1: @admin_property_detail.road_direction1, road_direction2: @admin_property_detail.road_direction2, road_direction3: @admin_property_detail.road_direction3, road_direction4: @admin_property_detail.road_direction4, road_width1: @admin_property_detail.road_width1, road_width2: @admin_property_detail.road_width2, road_width3: @admin_property_detail.road_width3, road_width4: @admin_property_detail.road_width4, situation: @admin_property_detail.situation, situation_date: @admin_property_detail.situation_date, situation_landcategory: @admin_property_detail.situation_landcategory, terrain: @admin_property_detail.terrain, town_plan: @admin_property_detail.town_plan, transfer: @admin_property_detail.transfer, transfer_date: @admin_property_detail.transfer_date, zoning1: @admin_property_detail.zoning1, zoning2: @admin_property_detail.zoning2, zoning_district: @admin_property_detail.zoning_district } }
    assert_redirected_to admin_property_detail_url(@admin_property_detail)
  end

  test "should destroy admin_property_detail" do
    assert_difference('Admin::PropertyDetail.count', -1) do
      delete admin_property_detail_url(@admin_property_detail)
    end

    assert_redirected_to admin_property_details_url
  end
end
