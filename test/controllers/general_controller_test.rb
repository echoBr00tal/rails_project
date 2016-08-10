require 'test_helper'

class GeneralControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get general_home_url
    assert_response :success
  end

  test "should get help" do
    get general_help_url
    assert_response :success
  end

  test "should get about" do
    get general_about_url
    assert_response :success
  end
  
  assert_select "title", "Home | Ruby on Rails Tutorial Sample App"
  assert_select "title", "Help | Ruby on Rails Tutorial Sample App"
  assert_select "title", "About | Ruby on Rails Tutorial Sample App"

end
