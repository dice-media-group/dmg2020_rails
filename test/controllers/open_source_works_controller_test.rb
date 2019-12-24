require 'test_helper'

class OpenSourceWorksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @open_source_work = open_source_works(:one)
  end

  test "should get index" do
    get open_source_works_url
    assert_response :success
  end

  test "should get new" do
    get new_open_source_work_url
    assert_response :success
  end

  test "should create open_source_work" do
    assert_difference('OpenSourceWork.count') do
      post open_source_works_url, params: { open_source_work: { license_kind: @open_source_work.license_kind, license_text: @open_source_work.license_text, title: @open_source_work.title, url: @open_source_work.url } }
    end

    assert_redirected_to open_source_work_url(OpenSourceWork.last)
  end

  test "should show open_source_work" do
    get open_source_work_url(@open_source_work)
    assert_response :success
  end

  test "should get edit" do
    get edit_open_source_work_url(@open_source_work)
    assert_response :success
  end

  test "should update open_source_work" do
    patch open_source_work_url(@open_source_work), params: { open_source_work: { license_kind: @open_source_work.license_kind, license_text: @open_source_work.license_text, title: @open_source_work.title, url: @open_source_work.url } }
    assert_redirected_to open_source_work_url(@open_source_work)
  end

  test "should destroy open_source_work" do
    assert_difference('OpenSourceWork.count', -1) do
      delete open_source_work_url(@open_source_work)
    end

    assert_redirected_to open_source_works_url
  end
end
