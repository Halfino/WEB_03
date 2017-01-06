require 'test_helper'

class AdminControllerTest < ActionController::TestCase
  test "should get userList" do
    get :userList
    assert_response :success
  end

  test "should get userAdmin" do
    get :userAdmin
    assert_response :success
  end

end
