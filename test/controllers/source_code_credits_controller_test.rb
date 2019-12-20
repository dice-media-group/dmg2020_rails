require 'test_helper'

class SourceCodeCreditsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @source_code_credit = source_code_credits(:one)
  end

  test "should get index" do
    get source_code_credits_url
    assert_response :success
  end

  test "should get new" do
    get new_source_code_credit_url
    assert_response :success
  end

  test "should create source_code_credit" do
    assert_difference('SourceCodeCredit.count') do
      post source_code_credits_url, params: { source_code_credit: { license_kind: @source_code_credit.license_kind, license_text: @source_code_credit.license_text, name_of_work: @source_code_credit.name_of_work, url: @source_code_credit.url } }
    end

    assert_redirected_to source_code_credit_url(SourceCodeCredit.last)
  end

  test "should show source_code_credit" do
    get source_code_credit_url(@source_code_credit)
    assert_response :success
  end

  test "should get edit" do
    get edit_source_code_credit_url(@source_code_credit)
    assert_response :success
  end

  test "should update source_code_credit" do
    patch source_code_credit_url(@source_code_credit), params: { source_code_credit: { license_kind: @source_code_credit.license_kind, license_text: @source_code_credit.license_text, name_of_work: @source_code_credit.name_of_work, url: @source_code_credit.url } }
    assert_redirected_to source_code_credit_url(@source_code_credit)
  end

  test "should destroy source_code_credit" do
    assert_difference('SourceCodeCredit.count', -1) do
      delete source_code_credit_url(@source_code_credit)
    end

    assert_redirected_to source_code_credits_url
  end
end
