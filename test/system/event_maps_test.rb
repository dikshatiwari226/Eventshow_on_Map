require "application_system_test_case"

class EventMapsTest < ApplicationSystemTestCase
  setup do
    @event_map = event_maps(:one)
  end

  test "visiting the index" do
    visit event_maps_url
    assert_selector "h1", text: "Event Maps"
  end

  test "creating a Event map" do
    visit event_maps_url
    click_on "New Event Map"

    fill_in "Address", with: @event_map.address
    fill_in "End date", with: @event_map.end_date
    fill_in "Start date", with: @event_map.start_date
    fill_in "Title", with: @event_map.title
    click_on "Create Event map"

    assert_text "Event map was successfully created"
    click_on "Back"
  end

  test "updating a Event map" do
    visit event_maps_url
    click_on "Edit", match: :first

    fill_in "Address", with: @event_map.address
    fill_in "End date", with: @event_map.end_date
    fill_in "Start date", with: @event_map.start_date
    fill_in "Title", with: @event_map.title
    click_on "Update Event map"

    assert_text "Event map was successfully updated"
    click_on "Back"
  end

  test "destroying a Event map" do
    visit event_maps_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Event map was successfully destroyed"
  end
end
