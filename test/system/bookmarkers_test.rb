require "application_system_test_case"

class BookmarkersTest < ApplicationSystemTestCase
  setup do
    @bookmarker = bookmarkers(:one)
  end

  test "visiting the index" do
    visit bookmarkers_url
    assert_selector "h1", text: "Bookmarkers"
  end

  test "creating a Bookmarker" do
    visit bookmarkers_url
    click_on "New Bookmarker"

    fill_in "Category", with: @bookmarker.category_id
    fill_in "Type", with: @bookmarker.type_id
    fill_in "Url", with: @bookmarker.url
    click_on "Create Bookmarker"

    assert_text "Bookmarker was successfully created"
    click_on "Back"
  end

  test "updating a Bookmarker" do
    visit bookmarkers_url
    click_on "Edit", match: :first

    fill_in "Category", with: @bookmarker.category_id
    fill_in "Type", with: @bookmarker.type_id
    fill_in "Url", with: @bookmarker.url
    click_on "Update Bookmarker"

    assert_text "Bookmarker was successfully updated"
    click_on "Back"
  end

  test "destroying a Bookmarker" do
    visit bookmarkers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Bookmarker was successfully destroyed"
  end
end
