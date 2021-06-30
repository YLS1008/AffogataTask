require "test_helper"

class PixelsControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get pixels_home_url
    assert_response :success
  end

  test "should get breed" do
    get pixels_breed_url
    assert_response :success
  end
end
