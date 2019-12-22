require 'test_helper'

class ServicesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get services_index_url
    assert_response :success
  end

  test "should get website" do
    get services_website_url
    assert_response :success
  end

  test "should get development" do
    get services_development_url
    assert_response :success
  end

  test "should get graphic_design" do
    get services_graphic_design_url
    assert_response :success
  end

  test "should get digital_marketing" do
    get services_digital_marketing_url
    assert_response :success
  end

  test "should get seo_and_content_marketing" do
    get services_seo_and_content_marketing_url
    assert_response :success
  end

  test "should get app_development" do
    get services_app_development_url
    assert_response :success
  end

end
