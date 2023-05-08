require "test_helper"

class StaticPages::PagesControllerTest < ActionDispatch::IntegrationTest
  test "should get user_page" do
    get static_pages_pages_user_page_url
    assert_response :success
  end
end
