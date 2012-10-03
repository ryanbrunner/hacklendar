require 'test_helper'

class CalendarEntriesControllerTest < ActionController::TestCase
  setup do
    @calendar_entry = calendar_entries(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:calendar_entries)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create calendar_entry" do
    assert_difference('CalendarEntry.count') do
      post :create, calendar_entry: { text: @calendar_entry.text, title: @calendar_entry.title }
    end

    assert_redirected_to calendar_entry_path(assigns(:calendar_entry))
  end

  test "should show calendar_entry" do
    get :show, id: @calendar_entry
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @calendar_entry
    assert_response :success
  end

  test "should update calendar_entry" do
    put :update, id: @calendar_entry, calendar_entry: { text: @calendar_entry.text, title: @calendar_entry.title }
    assert_redirected_to calendar_entry_path(assigns(:calendar_entry))
  end

  test "should destroy calendar_entry" do
    assert_difference('CalendarEntry.count', -1) do
      delete :destroy, id: @calendar_entry
    end

    assert_redirected_to calendar_entries_path
  end
end
