require 'test_helper'

class Admin::PropertyLayoutsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @admin_property_layout = admin_property_layouts(:one)
  end

  test "should get index" do
    get admin_property_layouts_url
    assert_response :success
  end

  test "should get new" do
    get new_admin_property_layout_url
    assert_response :success
  end

  test "should create admin_property_layout" do
    assert_difference('Admin::PropertyLayout.count') do
      post admin_property_layouts_url, params: { admin_property_layout: { corner_room: @admin_property_layout.corner_room, floor_plan: @admin_property_layout.floor_plan, other_room: @admin_property_layout.other_room, property_id: @admin_property_layout.property_id, room: @admin_property_layout.room, room_leve8: @admin_property_layout.room_leve8, room_level1: @admin_property_layout.room_level1, room_level2: @admin_property_layout.room_level2, room_level3: @admin_property_layout.room_level3, room_level4: @admin_property_layout.room_level4, room_level5: @admin_property_layout.room_level5, room_level6: @admin_property_layout.room_level6, room_level7: @admin_property_layout.room_level7, room_level9: @admin_property_layout.room_level9, room_size1: @admin_property_layout.room_size1, room_size2: @admin_property_layout.room_size2, room_size3: @admin_property_layout.room_size3, room_size4: @admin_property_layout.room_size4, room_size5: @admin_property_layout.room_size5, room_size6: @admin_property_layout.room_size6, room_size7: @admin_property_layout.room_size7, room_size8: @admin_property_layout.room_size8, room_size9: @admin_property_layout.room_size9, room_type1: @admin_property_layout.room_type1, room_type2: @admin_property_layout.room_type2, room_type3: @admin_property_layout.room_type3, room_type4: @admin_property_layout.room_type4, room_type5: @admin_property_layout.room_type5, room_type6: @admin_property_layout.room_type6, room_type7: @admin_property_layout.room_type7, room_type8: @admin_property_layout.room_type8, room_type9: @admin_property_layout.room_type9 } }
    end

    assert_redirected_to admin_property_layout_url(Admin::PropertyLayout.last)
  end

  test "should show admin_property_layout" do
    get admin_property_layout_url(@admin_property_layout)
    assert_response :success
  end

  test "should get edit" do
    get edit_admin_property_layout_url(@admin_property_layout)
    assert_response :success
  end

  test "should update admin_property_layout" do
    patch admin_property_layout_url(@admin_property_layout), params: { admin_property_layout: { corner_room: @admin_property_layout.corner_room, floor_plan: @admin_property_layout.floor_plan, other_room: @admin_property_layout.other_room, property_id: @admin_property_layout.property_id, room: @admin_property_layout.room, room_leve8: @admin_property_layout.room_leve8, room_level1: @admin_property_layout.room_level1, room_level2: @admin_property_layout.room_level2, room_level3: @admin_property_layout.room_level3, room_level4: @admin_property_layout.room_level4, room_level5: @admin_property_layout.room_level5, room_level6: @admin_property_layout.room_level6, room_level7: @admin_property_layout.room_level7, room_level9: @admin_property_layout.room_level9, room_size1: @admin_property_layout.room_size1, room_size2: @admin_property_layout.room_size2, room_size3: @admin_property_layout.room_size3, room_size4: @admin_property_layout.room_size4, room_size5: @admin_property_layout.room_size5, room_size6: @admin_property_layout.room_size6, room_size7: @admin_property_layout.room_size7, room_size8: @admin_property_layout.room_size8, room_size9: @admin_property_layout.room_size9, room_type1: @admin_property_layout.room_type1, room_type2: @admin_property_layout.room_type2, room_type3: @admin_property_layout.room_type3, room_type4: @admin_property_layout.room_type4, room_type5: @admin_property_layout.room_type5, room_type6: @admin_property_layout.room_type6, room_type7: @admin_property_layout.room_type7, room_type8: @admin_property_layout.room_type8, room_type9: @admin_property_layout.room_type9 } }
    assert_redirected_to admin_property_layout_url(@admin_property_layout)
  end

  test "should destroy admin_property_layout" do
    assert_difference('Admin::PropertyLayout.count', -1) do
      delete admin_property_layout_url(@admin_property_layout)
    end

    assert_redirected_to admin_property_layouts_url
  end
end
