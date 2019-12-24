require 'test_helper'

class OpenSourceContributorsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @open_source_contributor = open_source_contributors(:one)
  end

  test "should get index" do
    get open_source_contributors_url
    assert_response :success
  end

  test "should get new" do
    get new_open_source_contributor_url
    assert_response :success
  end

  test "should create open_source_contributor" do
    assert_difference('OpenSourceContributor.count') do
      post open_source_contributors_url, params: { open_source_contributor: { email: @open_source_contributor.email, first_name: @open_source_contributor.first_name, gravatar_username: @open_source_contributor.gravatar_username, last_name: @open_source_contributor.last_name, url: @open_source_contributor.url } }
    end

    assert_redirected_to open_source_contributor_url(OpenSourceContributor.last)
  end

  test "should show open_source_contributor" do
    get open_source_contributor_url(@open_source_contributor)
    assert_response :success
  end

  test "should get edit" do
    get edit_open_source_contributor_url(@open_source_contributor)
    assert_response :success
  end

  test "should update open_source_contributor" do
    patch open_source_contributor_url(@open_source_contributor), params: { open_source_contributor: { email: @open_source_contributor.email, first_name: @open_source_contributor.first_name, gravatar_username: @open_source_contributor.gravatar_username, last_name: @open_source_contributor.last_name, url: @open_source_contributor.url } }
    assert_redirected_to open_source_contributor_url(@open_source_contributor)
  end

  test "should destroy open_source_contributor" do
    assert_difference('OpenSourceContributor.count', -1) do
      delete open_source_contributor_url(@open_source_contributor)
    end

    assert_redirected_to open_source_contributors_url
  end
end
