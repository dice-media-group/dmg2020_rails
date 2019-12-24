require "application_system_test_case"

class OpenSourceContributorsTest < ApplicationSystemTestCase
  setup do
    @open_source_contributor = open_source_contributors(:one)
  end

  test "visiting the index" do
    visit open_source_contributors_url
    assert_selector "h1", text: "Open Source Contributors"
  end

  test "creating a Open source contributor" do
    visit open_source_contributors_url
    click_on "New Open Source Contributor"

    fill_in "Email", with: @open_source_contributor.email
    fill_in "First name", with: @open_source_contributor.first_name
    fill_in "Gravatar username", with: @open_source_contributor.gravatar_username
    fill_in "Last name", with: @open_source_contributor.last_name
    fill_in "Url", with: @open_source_contributor.url
    click_on "Create Open source contributor"

    assert_text "Open source contributor was successfully created"
    click_on "Back"
  end

  test "updating a Open source contributor" do
    visit open_source_contributors_url
    click_on "Edit", match: :first

    fill_in "Email", with: @open_source_contributor.email
    fill_in "First name", with: @open_source_contributor.first_name
    fill_in "Gravatar username", with: @open_source_contributor.gravatar_username
    fill_in "Last name", with: @open_source_contributor.last_name
    fill_in "Url", with: @open_source_contributor.url
    click_on "Update Open source contributor"

    assert_text "Open source contributor was successfully updated"
    click_on "Back"
  end

  test "destroying a Open source contributor" do
    visit open_source_contributors_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Open source contributor was successfully destroyed"
  end
end
