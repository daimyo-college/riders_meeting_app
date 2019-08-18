require "application_system_test_case"

class TouringRoutesTest < ApplicationSystemTestCase
  setup do
    @touring_route = touring_routes(:one)
  end

  test "visiting the index" do
    visit touring_routes_url
    assert_selector "h1", text: "Touring Routes"
  end

  test "creating a Touring route" do
    visit touring_routes_url
    click_on "New Touring Route"

    fill_in "Created at", with: @touring_route.created_at
    fill_in "End date", with: @touring_route.end_date
    fill_in "End lat", with: @touring_route.end_lat
    fill_in "End lon", with: @touring_route.end_lon
    fill_in "Start date", with: @touring_route.start_date
    fill_in "Start lat", with: @touring_route.start_lat
    fill_in "Start lon", with: @touring_route.start_lon
    fill_in "Touring desc", with: @touring_route.touring_desc
    fill_in "Touring name", with: @touring_route.touring_name
    fill_in "Updated at", with: @touring_route.updated_at
    fill_in "Wp1 lat", with: @touring_route.wp1_lat
    fill_in "Wp1 lon", with: @touring_route.wp1_lon
    fill_in "Wp2 lat", with: @touring_route.wp2_lat
    fill_in "Wp2 lon", with: @touring_route.wp2_lon
    fill_in "Wp3 lat", with: @touring_route.wp3_lat
    fill_in "Wp3 lon", with: @touring_route.wp3_lon
    click_on "Create Touring route"

    assert_text "Touring route was successfully created"
    click_on "Back"
  end

  test "updating a Touring route" do
    visit touring_routes_url
    click_on "Edit", match: :first

    fill_in "Created at", with: @touring_route.created_at
    fill_in "End date", with: @touring_route.end_date
    fill_in "End lat", with: @touring_route.end_lat
    fill_in "End lon", with: @touring_route.end_lon
    fill_in "Start date", with: @touring_route.start_date
    fill_in "Start lat", with: @touring_route.start_lat
    fill_in "Start lon", with: @touring_route.start_lon
    fill_in "Touring desc", with: @touring_route.touring_desc
    fill_in "Touring name", with: @touring_route.touring_name
    fill_in "Updated at", with: @touring_route.updated_at
    fill_in "Wp1 lat", with: @touring_route.wp1_lat
    fill_in "Wp1 lon", with: @touring_route.wp1_lon
    fill_in "Wp2 lat", with: @touring_route.wp2_lat
    fill_in "Wp2 lon", with: @touring_route.wp2_lon
    fill_in "Wp3 lat", with: @touring_route.wp3_lat
    fill_in "Wp3 lon", with: @touring_route.wp3_lon
    click_on "Update Touring route"

    assert_text "Touring route was successfully updated"
    click_on "Back"
  end

  test "destroying a Touring route" do
    visit touring_routes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Touring route was successfully destroyed"
  end
end
