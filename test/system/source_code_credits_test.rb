require "application_system_test_case"

class SourceCodeCreditsTest < ApplicationSystemTestCase
  setup do
    @source_code_credit = source_code_credits(:one)
  end

  test "visiting the index" do
    visit source_code_credits_url
    assert_selector "h1", text: "Source Code Credits"
  end

  test "creating a Source code credit" do
    visit source_code_credits_url
    click_on "New Source Code Credit"

    fill_in "License kind", with: @source_code_credit.license_kind
    fill_in "License text", with: @source_code_credit.license_text
    fill_in "Name of work", with: @source_code_credit.name_of_work
    fill_in "Url", with: @source_code_credit.url
    click_on "Create Source code credit"

    assert_text "Source code credit was successfully created"
    click_on "Back"
  end

  test "updating a Source code credit" do
    visit source_code_credits_url
    click_on "Edit", match: :first

    fill_in "License kind", with: @source_code_credit.license_kind
    fill_in "License text", with: @source_code_credit.license_text
    fill_in "Name of work", with: @source_code_credit.name_of_work
    fill_in "Url", with: @source_code_credit.url
    click_on "Update Source code credit"

    assert_text "Source code credit was successfully updated"
    click_on "Back"
  end

  test "destroying a Source code credit" do
    visit source_code_credits_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Source code credit was successfully destroyed"
  end
end
