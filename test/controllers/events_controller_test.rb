require 'test_helper'

class EventsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end
  
  test "invalid event id should get redirected" do
    get(:show, {'id' => "a"})
    assert_response :redirect
  end
  
  test "valid event id should return a show" do
    get(:show, {'id' => "E0-001-085971726-4"})
    assert_response :success
  end

end
