require "application_system_test_case"

class BlogEntriesTest < ApplicationSystemTestCase
  setup do
    @blog_entry = blog_entries(:one)
  end

  test "visiting the index" do
    visit blog_entries_url
    assert_selector "h1", text: "Blog Entries"
  end

  test "creating a Blog entry" do
    visit blog_entries_url
    click_on "New Blog Entry"

    fill_in "Publish at", with: @blog_entry.publish_at
    fill_in "Title", with: @blog_entry.title
    fill_in "User", with: @blog_entry.user_id
    click_on "Create Blog entry"

    assert_text "Blog entry was successfully created"
    click_on "Back"
  end

  test "updating a Blog entry" do
    visit blog_entries_url
    click_on "Edit", match: :first

    fill_in "Publish at", with: @blog_entry.publish_at
    fill_in "Title", with: @blog_entry.title
    fill_in "User", with: @blog_entry.user_id
    click_on "Update Blog entry"

    assert_text "Blog entry was successfully updated"
    click_on "Back"
  end

  test "destroying a Blog entry" do
    visit blog_entries_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Blog entry was successfully destroyed"
  end
end
