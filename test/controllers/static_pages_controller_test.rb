require 'test_helper'

class StaticPagesControllerTest < ActionController::TestCase
  test "should get about" do
    get :about
    assert_response :success
  end

  test "should get course" do
    get :course
    assert_response :success
  end

  test "should get event_details" do
    get :event_details
    assert_response :success
  end

  test "should get home" do
    get :home
    assert_response :success
  end

end
