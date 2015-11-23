require 'test_helper'

class StaticPagesControllerTest < ActionController::TestCase
  
  test "should get home" do
    get :home
    assert_response :success
    assert_select "title", "Home | iLike App"
  end
  
  test "should get about" do
    get :about
    assert_response :success
    assert_select "title", "About | iLike App"
  end

end
