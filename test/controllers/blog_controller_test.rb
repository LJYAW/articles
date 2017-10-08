require 'test_helper'

class BlogControllerTest < ActionController::TestCase
  test "should get articles" do
    get :articles
    assert_response :success
  end

end
