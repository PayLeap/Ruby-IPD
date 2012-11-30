require 'test_helper'

class FooterControllerTest < ActionController::TestCase
  test "should get _footer" do
    get :_footer
    assert_response :success
  end

end
