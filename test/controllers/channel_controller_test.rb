require 'test_helper'

class ChannelControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get channel_index_url
    assert_response :success
  end

end
