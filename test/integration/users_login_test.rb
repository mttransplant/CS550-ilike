require 'test_helper'

class UsersLoginTest < ActionDispatch::IntegrationTest
  
  def setup
    @user = users(:ana)
  end
  
  test "login with invalid information" do
    # Visit the login path
    get login_path
    
    # Verify that the new sessions form renders properly
    assert_template 'sessions/new'
    
    # Post to the sessions path with an invalid params hash
    post login_path, session: { email: '', password: '' }
    
    # Verify that the new session form gets re-rendered and that a flash message appears
    assert_template 'sessions/new'
    assert_not flash.empty?
    
    # Visit another page
    get root_path
    
    # Verify that the flash message doesn't appear on the new page
    assert flash.empty?
  end
  
  test "login with valid information followed by logout" do
    # Visit the login path
    get login_path
    
    # Post valid information to the sessions path
    post login_path, session: { email: @user.email, password: 'password' }
    assert is_logged_in?
    assert_redirected_to root_path
    follow_redirect!
    assert_template 'users/landing'
    
    # Verify that the login link disappears
    assert_select "a[href=?]", login_path, count: 0
    
    # Verify that a logout link appears
    assert_select "a[href=?]", logout_path
    
    # Verify that a profile link appears
    assert_select "a[href=?]", user_path(@user)
    
    # Visit the logout path
    delete logout_path
    
    # Verify that the user is no longer logged in
    assert_not is_logged_in?
    assert_redirected_to root_url
    
    # Simulate a user clicking logout in a second window.
    delete logout_path
    follow_redirect!
    
    # Verify that the login link appears
    assert_select "a[href=?]", login_path
    
    # Verify that the logout link disappears
    assert_select "a[href=?]", logout_path,      count: 0
    
    # Verify that the profile link disappears
    assert_select "a[href=?]", user_path(@user), count: 0
  end
  
  test "login with remembering" do
    log_in_as(@user, remember_me: '1')
    assert_equal cookies['remember_token'], assigns(:user).remember_token
  end

  test "login without remembering" do
    log_in_as(@user, remember_me: '0')
    assert_nil cookies['remember_token']
  end
  
end
