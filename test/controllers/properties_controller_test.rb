require 'test_helper'

class PropertiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @property = properties(:one)
  end

  test "should get index" do
    get properties_url
    assert_response :success
  end

  test "should get new" do
    get new_property_url
    assert_response :success
  end

  test "should create property" do
    assert_difference('Property.count') do
      post properties_url, params: { property: { alleyground_area: @property.alleyground_area, alleyground_class: @property.alleyground_class, apartment_name: @property.apartment_name, architectural_condition: @property.architectural_condition, balcony_area: @property.balcony_area, building_area1: @property.building_area1, building_area2: @property.building_area2, building_area3: @property.building_area3, buildingcertification: @property.buildingcertification, buildingcertification_number: @property.buildingcertification_number, buildingcoverage_ratio: @property.buildingcoverage_ratio, buildingnumber: @property.buildingnumber, busroute_name1: @property.busroute_name1, busroute_name2: @property.busroute_name2, busroute_name3: @property.busroute_name3, busstop_name1: @property.busstop_name1, busstop_name2: @property.busstop_name2, busstop_name3: @property.busstop_name3, busstop_walkd1: @property.busstop_walkd1, busstop_walkd2: @property.busstop_walkd2, busstop_walkd3: @property.busstop_walkd3, busstop_walkm1: @property.busstop_walkm1, busstop_walkm2: @property.busstop_walkm2, busstop_walkm3: @property.busstop_walkm3, city: @property.city, condition: @property.condition, connecting_road: @property.connecting_road, construction_date: @property.construction_date, consumption_tax: @property.consumption_tax, contact_distance1: @property.contact_distance1, contact_distance2: @property.contact_distance2, contact_distance3: @property.contact_distance3, contact_distance4: @property.contact_distance4, coownership: @property.coownership, coownership_area: @property.coownership_area, corner_room: @property.corner_room, designation_road1: @property.designation_road1, designation_road2: @property.designation_road2, designation_road3: @property.designation_road3, designation_road4: @property.designation_road4, development_area1: @property.development_area1, development_area2: @property.development_area2, driveway_area: @property.driveway_area, driveway_burden: @property.driveway_burden, driveway_part1: @property.driveway_part1, driveway_part2: @property.driveway_part2, fee_amount: @property.fee_amount, fee_part: @property.fee_part, firstfloor_area: @property.firstfloor_area, floor_plan: @property.floor_plan, floorarea_ratio: @property.floorarea_ratio, floorarea_restriction: @property.floorarea_restriction, homeowner_association: @property.homeowner_association, land_area: @property.land_area, land_title: @property.land_title, law_restriction: @property.law_restriction, measurement: @property.measurement, mediation_date: @property.mediation_date, move_date: @property.move_date, nationalland_law: @property.nationalland_law, occupied_area: @property.occupied_area, optimum_site: @property.optimum_site, other_room: @property.other_room, other_transportation: @property.other_transportation, otherfloor_area: @property.otherfloor_area, paved_road: @property.paved_road, postal_code: @property.postal_code, prefecture: @property.prefecture, price: @property.price, privategarden_area: @property.privategarden_area, property_type1: @property.property_type1, property_type2: @property.property_type2, rebuilding: @property.rebuilding, register_landcategory: @property.register_landcategory, remuneration: @property.remuneration, road_class1: @property.road_class1, road_class2: @property.road_class2, road_class3: @property.road_class3, road_class4: @property.road_class4, road_direction1: @property.road_direction1, road_direction2: @property.road_direction2, road_direction3: @property.road_direction3, road_direction4: @property.road_direction4, road_width1: @property.road_width1, road_width2: @property.road_width2, road_width3: @property.road_width3, road_width4: @property.road_width4, room: @property.room, room_level1: @property.room_level1, room_level2: @property.room_level2, room_level3: @property.room_level3, room_level4: @property.room_level4, room_level5: @property.room_level5, room_level6: @property.room_level6, room_level7: @property.room_level7, room_level8: @property.room_level8, room_level9: @property.room_level9, room_size1: @property.room_size1, room_size2: @property.room_size2, room_size3: @property.room_size3, room_size4: @property.room_size4, room_size5: @property.room_size5, room_size6: @property.room_size6, room_size7: @property.room_size7, room_size8: @property.room_size8, room_size9: @property.room_size9, room_type1: @property.room_type1, room_type2: @property.room_type2, room_type3: @property.room_type3, room_type4: @property.room_type4, room_type5: @property.room_type5, room_type6: @property.room_type6, room_type7: @property.room_type7, room_type8: @property.room_type8, room_type9: @property.room_type9, roomnumber: @property.roomnumber, route_name1: @property.route_name1, route_name2: @property.route_name2, route_name3: @property.route_name3, secondfloor_area: @property.secondfloor_area, setback_area: @property.setback_area, setback_class: @property.setback_class, setback_distance: @property.setback_distance, show_roomnumber: @property.show_roomnumber, show_street: @property.show_street, situation: @property.situation, situation_date: @property.situation_date, situation_landcategory: @property.situation_landcategory, station_bus1: @property.station_bus1, station_bus2: @property.station_bus2, station_bus3: @property.station_bus3, station_car1: @property.station_car1, station_car2: @property.station_car2, station_car3: @property.station_car3, station_name1: @property.station_name1, station_name2: @property.station_name2, station_name3: @property.station_name3, station_walkd1: @property.station_walkd1, station_walkd2: @property.station_walkd2, station_walkd3: @property.station_walkd3, station_walkm1: @property.station_walkm1, station_walkm2: @property.station_walkm2, station_walkm3: @property.station_walkm3, street: @property.street, subdivision: @property.subdivision, supplementary_explanation: @property.supplementary_explanation, terrace_area: @property.terrace_area, terrain: @property.terrain, thirdfloor_area: @property.thirdfloor_area, total_area: @property.total_area, totalfloor_area: @property.totalfloor_area, town_plan: @property.town_plan, transaction_type: @property.transaction_type, transfer: @property.transfer, transfer_date: @property.transfer_date, zoning1: @property.zoning1, zoning2: @property.zoning2, zoning_district: @property.zoning_district } }
    end

    assert_redirected_to property_url(Property.last)
  end

  test "should show property" do
    get property_url(@property)
    assert_response :success
  end

  test "should get edit" do
    get edit_property_url(@property)
    assert_response :success
  end

  test "should update property" do
    patch property_url(@property), params: { property: { alleyground_area: @property.alleyground_area, alleyground_class: @property.alleyground_class, apartment_name: @property.apartment_name, architectural_condition: @property.architectural_condition, balcony_area: @property.balcony_area, building_area1: @property.building_area1, building_area2: @property.building_area2, building_area3: @property.building_area3, buildingcertification: @property.buildingcertification, buildingcertification_number: @property.buildingcertification_number, buildingcoverage_ratio: @property.buildingcoverage_ratio, buildingnumber: @property.buildingnumber, busroute_name1: @property.busroute_name1, busroute_name2: @property.busroute_name2, busroute_name3: @property.busroute_name3, busstop_name1: @property.busstop_name1, busstop_name2: @property.busstop_name2, busstop_name3: @property.busstop_name3, busstop_walkd1: @property.busstop_walkd1, busstop_walkd2: @property.busstop_walkd2, busstop_walkd3: @property.busstop_walkd3, busstop_walkm1: @property.busstop_walkm1, busstop_walkm2: @property.busstop_walkm2, busstop_walkm3: @property.busstop_walkm3, city: @property.city, condition: @property.condition, connecting_road: @property.connecting_road, construction_date: @property.construction_date, consumption_tax: @property.consumption_tax, contact_distance1: @property.contact_distance1, contact_distance2: @property.contact_distance2, contact_distance3: @property.contact_distance3, contact_distance4: @property.contact_distance4, coownership: @property.coownership, coownership_area: @property.coownership_area, corner_room: @property.corner_room, designation_road1: @property.designation_road1, designation_road2: @property.designation_road2, designation_road3: @property.designation_road3, designation_road4: @property.designation_road4, development_area1: @property.development_area1, development_area2: @property.development_area2, driveway_area: @property.driveway_area, driveway_burden: @property.driveway_burden, driveway_part1: @property.driveway_part1, driveway_part2: @property.driveway_part2, fee_amount: @property.fee_amount, fee_part: @property.fee_part, firstfloor_area: @property.firstfloor_area, floor_plan: @property.floor_plan, floorarea_ratio: @property.floorarea_ratio, floorarea_restriction: @property.floorarea_restriction, homeowner_association: @property.homeowner_association, land_area: @property.land_area, land_title: @property.land_title, law_restriction: @property.law_restriction, measurement: @property.measurement, mediation_date: @property.mediation_date, move_date: @property.move_date, nationalland_law: @property.nationalland_law, occupied_area: @property.occupied_area, optimum_site: @property.optimum_site, other_room: @property.other_room, other_transportation: @property.other_transportation, otherfloor_area: @property.otherfloor_area, paved_road: @property.paved_road, postal_code: @property.postal_code, prefecture: @property.prefecture, price: @property.price, privategarden_area: @property.privategarden_area, property_type1: @property.property_type1, property_type2: @property.property_type2, rebuilding: @property.rebuilding, register_landcategory: @property.register_landcategory, remuneration: @property.remuneration, road_class1: @property.road_class1, road_class2: @property.road_class2, road_class3: @property.road_class3, road_class4: @property.road_class4, road_direction1: @property.road_direction1, road_direction2: @property.road_direction2, road_direction3: @property.road_direction3, road_direction4: @property.road_direction4, road_width1: @property.road_width1, road_width2: @property.road_width2, road_width3: @property.road_width3, road_width4: @property.road_width4, room: @property.room, room_level1: @property.room_level1, room_level2: @property.room_level2, room_level3: @property.room_level3, room_level4: @property.room_level4, room_level5: @property.room_level5, room_level6: @property.room_level6, room_level7: @property.room_level7, room_level8: @property.room_level8, room_level9: @property.room_level9, room_size1: @property.room_size1, room_size2: @property.room_size2, room_size3: @property.room_size3, room_size4: @property.room_size4, room_size5: @property.room_size5, room_size6: @property.room_size6, room_size7: @property.room_size7, room_size8: @property.room_size8, room_size9: @property.room_size9, room_type1: @property.room_type1, room_type2: @property.room_type2, room_type3: @property.room_type3, room_type4: @property.room_type4, room_type5: @property.room_type5, room_type6: @property.room_type6, room_type7: @property.room_type7, room_type8: @property.room_type8, room_type9: @property.room_type9, roomnumber: @property.roomnumber, route_name1: @property.route_name1, route_name2: @property.route_name2, route_name3: @property.route_name3, secondfloor_area: @property.secondfloor_area, setback_area: @property.setback_area, setback_class: @property.setback_class, setback_distance: @property.setback_distance, show_roomnumber: @property.show_roomnumber, show_street: @property.show_street, situation: @property.situation, situation_date: @property.situation_date, situation_landcategory: @property.situation_landcategory, station_bus1: @property.station_bus1, station_bus2: @property.station_bus2, station_bus3: @property.station_bus3, station_car1: @property.station_car1, station_car2: @property.station_car2, station_car3: @property.station_car3, station_name1: @property.station_name1, station_name2: @property.station_name2, station_name3: @property.station_name3, station_walkd1: @property.station_walkd1, station_walkd2: @property.station_walkd2, station_walkd3: @property.station_walkd3, station_walkm1: @property.station_walkm1, station_walkm2: @property.station_walkm2, station_walkm3: @property.station_walkm3, street: @property.street, subdivision: @property.subdivision, supplementary_explanation: @property.supplementary_explanation, terrace_area: @property.terrace_area, terrain: @property.terrain, thirdfloor_area: @property.thirdfloor_area, total_area: @property.total_area, totalfloor_area: @property.totalfloor_area, town_plan: @property.town_plan, transaction_type: @property.transaction_type, transfer: @property.transfer, transfer_date: @property.transfer_date, zoning1: @property.zoning1, zoning2: @property.zoning2, zoning_district: @property.zoning_district } }
    assert_redirected_to property_url(@property)
  end

  test "should destroy property" do
    assert_difference('Property.count', -1) do
      delete property_url(@property)
    end

    assert_redirected_to properties_url
  end
end