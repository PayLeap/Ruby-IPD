require 'test_helper'

class WebserviceresponseControllerTest < ActionController::TestCase
  test "should get _webserviceresponse" do
    get :_webserviceresponse
    assert_response :success
  end

end
