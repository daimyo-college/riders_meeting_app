require "application_system_test_case"

class RidersTest < ApplicationSystemTestCase
  setup do
    @rider = riders(:one)
  end

  test "visiting the index" do
    visit riders_url
    assert_selector "h1", text: "Riders"
  end

  test "creating a Rider" do
    visit riders_url
    click_on "New Rider"

    fill_in "Bike name", with: @rider.bike_name
    fill_in "Created at", with: @rider.created_at
    fill_in "Email", with: @rider.email
    fill_in "Icon file name", with: @rider.icon_file_name
    fill_in "Rider name", with: @rider.rider_name
    fill_in "Updated at", with: @rider.updated_at
    click_on "Create Rider"

    assert_text "Rider was successfully created"
    click_on "Back"
  end

  test "updating a Rider" do
    visit riders_url
    click_on "Edit", match: :first

    fill_in "Bike name", with: @rider.bike_name
    fill_in "Created at", with: @rider.created_at
    fill_in "Email", with: @rider.email
    fill_in "Icon file name", with: @rider.icon_file_name
    fill_in "Rider name", with: @rider.rider_name
    fill_in "Updated at", with: @rider.updated_at
    click_on "Update Rider"

    assert_text "Rider was successfully updated"
    click_on "Back"
  end

  test "destroying a Rider" do
    visit riders_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Rider was successfully destroyed"
  end
end
