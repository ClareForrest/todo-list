require 'test_helper'

class TodosControllerTest < ActionDispatch::IntegrationTest
  test "should get restricted" do
    get todos_restricted_url
    assert_response :success
  end

  test "should get home" do
    get todos_home_url
    assert_response :success
  end

end
