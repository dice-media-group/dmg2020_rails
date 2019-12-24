require "application_system_test_case"

class OpenSourceWorksTest < ApplicationSystemTestCase
  setup do
    @open_source_work = open_source_works(:one)
  end

  test "visiting the index" do
    visit open_source_works_url
    assert_selector "h1", text: "Open Source Works"
  end

  test "creating a Open source work" do
    visit open_source_works_url
    click_on "New Open Source Work"

    fill_in "License kind", with: @open_source_work.license_kind
    fill_in "License text", with: @open_source_work.license_text
    fill_in "Title", with: @open_source_work.title
    fill_in "Url", with: @open_source_work.url
    click_on "Create Open source work"

    assert_text "Open source work was successfully created"
    click_on "Back"
  end

  test "updating a Open source work" do
    visit open_source_works_url
    click_on "Edit", match: :first

    fill_in "License kind", with: @open_source_work.license_kind
    fill_in "License text", with: @open_source_work.license_text
    fill_in "Title", with: @open_source_work.title
    fill_in "Url", with: @open_source_work.url
    click_on "Update Open source work"

    assert_text "Open source work was successfully updated"
    click_on "Back"
  end

  test "destroying a Open source work" do
    visit open_source_works_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Open source work was successfully destroyed"
  end
end
