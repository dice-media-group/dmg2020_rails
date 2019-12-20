require "application_system_test_case"

class SourceCodeContributorsTest < ApplicationSystemTestCase
  setup do
    @source_code_contributor = source_code_contributors(:one)
  end

  test "visiting the index" do
    visit source_code_contributors_url
    assert_selector "h1", text: "Source Code Contributors"
  end

  test "creating a Source code contributor" do
    visit source_code_contributors_url
    click_on "New Source Code Contributor"

    fill_in "First name", with: @source_code_contributor.first_name
    fill_in "Last name", with: @source_code_contributor.last_name
    click_on "Create Source code contributor"

    assert_text "Source code contributor was successfully created"
    click_on "Back"
  end

  test "updating a Source code contributor" do
    visit source_code_contributors_url
    click_on "Edit", match: :first

    fill_in "First name", with: @source_code_contributor.first_name
    fill_in "Last name", with: @source_code_contributor.last_name
    click_on "Update Source code contributor"

    assert_text "Source code contributor was successfully updated"
    click_on "Back"
  end

  test "destroying a Source code contributor" do
    visit source_code_contributors_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Source code contributor was successfully destroyed"
  end
end
