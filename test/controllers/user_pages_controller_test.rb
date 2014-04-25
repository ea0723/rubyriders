require 'test_helper'

class UserPagesControllerTest < ActionController::TestCase
  test "should get overview" do
    get :overview
    assert_response :success
  end

  test "should get my_companies" do
    get :my_companies
    assert_response :success
  end

end
