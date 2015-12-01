require 'test_helper'

class ViewEventControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end
  
  #test "invalid event id" do
  #  get(:show, {'id' => "a"})
  #  assert_not(@event_found)
  #end
  
  test "should get redirected" do
    get(:show, {'id' => "a"})
    assert_response :redirect
  end
  
  test "should return a show" do
    get(:show, {'id' => "E0-001-085971726-4"})
    assert_response :success
  end

end
