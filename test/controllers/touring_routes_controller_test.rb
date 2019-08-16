require 'test_helper'

class TouringRoutesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @touring_route = touring_routes(:one)
  end

  test "should get index" do
    get touring_routes_url
    assert_response :success
  end

  test "should get new" do
    get new_touring_route_url
    assert_response :success
  end

  test "should create touring_route" do
    assert_difference('TouringRoute.count') do
      post touring_routes_url, params: { touring_route: { created_at: @touring_route.created_at, end_date: @touring_route.end_date, end_lat: @touring_route.end_lat, end_lon: @touring_route.end_lon, start_date: @touring_route.start_date, start_lat: @touring_route.start_lat, start_lon: @touring_route.start_lon, touring_desc: @touring_route.touring_desc, touring_name: @touring_route.touring_name, updated_at: @touring_route.updated_at, wp1_lat: @touring_route.wp1_lat, wp1_lon: @touring_route.wp1_lon, wp2_lat: @touring_route.wp2_lat, wp2_lon: @touring_route.wp2_lon, wp3_lat: @touring_route.wp3_lat, wp3_lon: @touring_route.wp3_lon } }
    end

    assert_redirected_to touring_route_url(TouringRoute.last)
  end

  test "should show touring_route" do
    get touring_route_url(@touring_route)
    assert_response :success
  end

  test "should get edit" do
    get edit_touring_route_url(@touring_route)
    assert_response :success
  end

  test "should update touring_route" do
    patch touring_route_url(@touring_route), params: { touring_route: { created_at: @touring_route.created_at, end_date: @touring_route.end_date, end_lat: @touring_route.end_lat, end_lon: @touring_route.end_lon, start_date: @touring_route.start_date, start_lat: @touring_route.start_lat, start_lon: @touring_route.start_lon, touring_desc: @touring_route.touring_desc, touring_name: @touring_route.touring_name, updated_at: @touring_route.updated_at, wp1_lat: @touring_route.wp1_lat, wp1_lon: @touring_route.wp1_lon, wp2_lat: @touring_route.wp2_lat, wp2_lon: @touring_route.wp2_lon, wp3_lat: @touring_route.wp3_lat, wp3_lon: @touring_route.wp3_lon } }
    assert_redirected_to touring_route_url(@touring_route)
  end

  test "should destroy touring_route" do
    assert_difference('TouringRoute.count', -1) do
      delete touring_route_url(@touring_route)
    end

    assert_redirected_to touring_routes_url
  end
end
