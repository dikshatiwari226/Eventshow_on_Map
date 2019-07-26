require 'test_helper'

class EventMapsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @event_map = event_maps(:one)
  end

  test "should get index" do
    get event_maps_url
    assert_response :success
  end

  test "should get new" do
    get new_event_map_url
    assert_response :success
  end

  test "should create event_map" do
    assert_difference('EventMap.count') do
      post event_maps_url, params: { event_map: { address: @event_map.address, end_date: @event_map.end_date, start_date: @event_map.start_date, title: @event_map.title } }
    end

    assert_redirected_to event_map_url(EventMap.last)
  end

  test "should show event_map" do
    get event_map_url(@event_map)
    assert_response :success
  end

  test "should get edit" do
    get edit_event_map_url(@event_map)
    assert_response :success
  end

  test "should update event_map" do
    patch event_map_url(@event_map), params: { event_map: { address: @event_map.address, end_date: @event_map.end_date, start_date: @event_map.start_date, title: @event_map.title } }
    assert_redirected_to event_map_url(@event_map)
  end

  test "should destroy event_map" do
    assert_difference('EventMap.count', -1) do
      delete event_map_url(@event_map)
    end

    assert_redirected_to event_maps_url
  end
end
