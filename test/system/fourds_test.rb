require "application_system_test_case"

class FourdsTest < ApplicationSystemTestCase
  setup do
    @fourd = fourds(:one)
  end

  test "visiting the index" do
    visit fourds_url
    assert_selector "h1", text: "Fourds"
  end

  test "creating a Fourd" do
    visit fourds_url
    click_on "New Fourd"

    click_on "Create Fourd"

    assert_text "Fourd was successfully created"
    click_on "Back"
  end

  test "updating a Fourd" do
    visit fourds_url
    click_on "Edit", match: :first

    click_on "Update Fourd"

    assert_text "Fourd was successfully updated"
    click_on "Back"
  end

  test "destroying a Fourd" do
    visit fourds_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Fourd was successfully destroyed"
  end
end
