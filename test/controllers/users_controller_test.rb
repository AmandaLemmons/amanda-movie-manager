require 'test_helper'

class UsersControllerTest < ActionController::TestCase
  test "should get rails" do
    get :rails
    assert_response :success
  end

  test "should get generate" do
    get :generate
    assert_response :success
  end

  test "should get doorkeeper:migration" do
    get :doorkeeper:migration
    assert_response :success
  end

end
