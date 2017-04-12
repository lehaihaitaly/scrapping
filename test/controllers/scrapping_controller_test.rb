require 'test_helper'

class ScrappingControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get scrapping_index_url
    assert_response :success
  end

end
