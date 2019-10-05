require "application_system_test_case"

class EntertainmentsTest < ApplicationSystemTestCase
  setup do
    @entertainment = entertainments(:one)
  end

  test "visiting the index" do
    visit entertainments_url
    assert_selector "h1", text: "Entertainments"
  end

  test "creating a Entertainment" do
    visit entertainments_url
    click_on "New Entertainment"

    click_on "Create Entertainment"

    assert_text "Entertainment was successfully created"
    click_on "Back"
  end

  test "updating a Entertainment" do
    visit entertainments_url
    click_on "Edit", match: :first

    click_on "Update Entertainment"

    assert_text "Entertainment was successfully updated"
    click_on "Back"
  end

  test "destroying a Entertainment" do
    visit entertainments_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Entertainment was successfully destroyed"
  end
end
