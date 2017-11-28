require 'test_helper'

class Admin::PropertyTrafficsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @admin_property_traffic = admin_property_traffics(:one)
  end

  test "should get index" do
    get admin_property_traffics_url
    assert_response :success
  end

  test "should get new" do
    get new_admin_property_traffic_url
    assert_response :success
  end

  test "should create admin_property_traffic" do
    assert_difference('Admin::PropertyTraffic.count') do
      post admin_property_traffics_url, params: { admin_property_traffic: { busroute_name1: @admin_property_traffic.busroute_name1, busroute_name2: @admin_property_traffic.busroute_name2, busroute_name3: @admin_property_traffic.busroute_name3, busstop_name1: @admin_property_traffic.busstop_name1, busstop_name2: @admin_property_traffic.busstop_name2, busstop_name3: @admin_property_traffic.busstop_name3, busstop_walkd1: @admin_property_traffic.busstop_walkd1, busstop_walkd2: @admin_property_traffic.busstop_walkd2, busstop_walkd3: @admin_property_traffic.busstop_walkd3, busstop_walkm1: @admin_property_traffic.busstop_walkm1, busstop_walkm2: @admin_property_traffic.busstop_walkm2, busstop_walkm3: @admin_property_traffic.busstop_walkm3, other_transportation: @admin_property_traffic.other_transportation, property_id: @admin_property_traffic.property_id, route_name1: @admin_property_traffic.route_name1, route_name2: @admin_property_traffic.route_name2, route_name3: @admin_property_traffic.route_name3, station_bus1: @admin_property_traffic.station_bus1, station_bus2: @admin_property_traffic.station_bus2, station_bus3: @admin_property_traffic.station_bus3, station_car1: @admin_property_traffic.station_car1, station_car2: @admin_property_traffic.station_car2, station_car3: @admin_property_traffic.station_car3, station_name1: @admin_property_traffic.station_name1, station_name2: @admin_property_traffic.station_name2, station_name3: @admin_property_traffic.station_name3, station_walkd1: @admin_property_traffic.station_walkd1, station_walkd2: @admin_property_traffic.station_walkd2, station_walkd3: @admin_property_traffic.station_walkd3, station_walkm1: @admin_property_traffic.station_walkm1, station_walkm2: @admin_property_traffic.station_walkm2, station_walkm3: @admin_property_traffic.station_walkm3 } }
    end

    assert_redirected_to admin_property_traffic_url(Admin::PropertyTraffic.last)
  end

  test "should show admin_property_traffic" do
    get admin_property_traffic_url(@admin_property_traffic)
    assert_response :success
  end

  test "should get edit" do
    get edit_admin_property_traffic_url(@admin_property_traffic)
    assert_response :success
  end

  test "should update admin_property_traffic" do
    patch admin_property_traffic_url(@admin_property_traffic), params: { admin_property_traffic: { busroute_name1: @admin_property_traffic.busroute_name1, busroute_name2: @admin_property_traffic.busroute_name2, busroute_name3: @admin_property_traffic.busroute_name3, busstop_name1: @admin_property_traffic.busstop_name1, busstop_name2: @admin_property_traffic.busstop_name2, busstop_name3: @admin_property_traffic.busstop_name3, busstop_walkd1: @admin_property_traffic.busstop_walkd1, busstop_walkd2: @admin_property_traffic.busstop_walkd2, busstop_walkd3: @admin_property_traffic.busstop_walkd3, busstop_walkm1: @admin_property_traffic.busstop_walkm1, busstop_walkm2: @admin_property_traffic.busstop_walkm2, busstop_walkm3: @admin_property_traffic.busstop_walkm3, other_transportation: @admin_property_traffic.other_transportation, property_id: @admin_property_traffic.property_id, route_name1: @admin_property_traffic.route_name1, route_name2: @admin_property_traffic.route_name2, route_name3: @admin_property_traffic.route_name3, station_bus1: @admin_property_traffic.station_bus1, station_bus2: @admin_property_traffic.station_bus2, station_bus3: @admin_property_traffic.station_bus3, station_car1: @admin_property_traffic.station_car1, station_car2: @admin_property_traffic.station_car2, station_car3: @admin_property_traffic.station_car3, station_name1: @admin_property_traffic.station_name1, station_name2: @admin_property_traffic.station_name2, station_name3: @admin_property_traffic.station_name3, station_walkd1: @admin_property_traffic.station_walkd1, station_walkd2: @admin_property_traffic.station_walkd2, station_walkd3: @admin_property_traffic.station_walkd3, station_walkm1: @admin_property_traffic.station_walkm1, station_walkm2: @admin_property_traffic.station_walkm2, station_walkm3: @admin_property_traffic.station_walkm3 } }
    assert_redirected_to admin_property_traffic_url(@admin_property_traffic)
  end

  test "should destroy admin_property_traffic" do
    assert_difference('Admin::PropertyTraffic.count', -1) do
      delete admin_property_traffic_url(@admin_property_traffic)
    end

    assert_redirected_to admin_property_traffics_url
  end
end
