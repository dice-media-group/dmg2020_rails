require 'test_helper'

class SourceCodeContributorsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @source_code_contributor = source_code_contributors(:one)
  end

  test "should get index" do
    get source_code_contributors_url
    assert_response :success
  end

  test "should get new" do
    get new_source_code_contributor_url
    assert_response :success
  end

  test "should create source_code_contributor" do
    assert_difference('SourceCodeContributor.count') do
      post source_code_contributors_url, params: { source_code_contributor: { first_name: @source_code_contributor.first_name, last_name: @source_code_contributor.last_name } }
    end

    assert_redirected_to source_code_contributor_url(SourceCodeContributor.last)
  end

  test "should show source_code_contributor" do
    get source_code_contributor_url(@source_code_contributor)
    assert_response :success
  end

  test "should get edit" do
    get edit_source_code_contributor_url(@source_code_contributor)
    assert_response :success
  end

  test "should update source_code_contributor" do
    patch source_code_contributor_url(@source_code_contributor), params: { source_code_contributor: { first_name: @source_code_contributor.first_name, last_name: @source_code_contributor.last_name } }
    assert_redirected_to source_code_contributor_url(@source_code_contributor)
  end

  test "should destroy source_code_contributor" do
    assert_difference('SourceCodeContributor.count', -1) do
      delete source_code_contributor_url(@source_code_contributor)
    end

    assert_redirected_to source_code_contributors_url
  end
end
