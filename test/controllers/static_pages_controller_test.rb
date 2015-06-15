require 'test_helper'

class StaticPagesControllerTest < ActionController::TestCase
  test "should get content" do
    get :content
    assert_response :success
  end

end
