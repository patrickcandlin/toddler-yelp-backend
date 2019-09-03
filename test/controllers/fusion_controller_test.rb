require 'test_helper'

class FusionControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get fusion_index_url
    assert_response :success
  end

end
