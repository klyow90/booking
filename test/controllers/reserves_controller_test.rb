require 'test_helper'

class ReservesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get reserve_index_url
    assert_response :success
  end

end
