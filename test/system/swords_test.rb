require "application_system_test_case"

class SwordsTest < ApplicationSystemTestCase
  setup do
    @sword = swords(:one)
  end

  test "visiting the index" do
    visit swords_url
    assert_selector "h1", text: "Swords"
  end

  test "creating a Sword" do
    visit swords_url
    click_on "New Sword"

    fill_in "Broken", with: @sword.broken
    fill_in "Length", with: @sword.length
    fill_in "Material", with: @sword.material
    fill_in "User", with: @sword.user_id
    fill_in "Victim", with: @sword.victim_id
    click_on "Create Sword"

    assert_text "Sword was successfully created"
    click_on "Back"
  end

  test "updating a Sword" do
    visit swords_url
    click_on "Edit", match: :first

    fill_in "Broken", with: @sword.broken
    fill_in "Length", with: @sword.length
    fill_in "Material", with: @sword.material
    fill_in "User", with: @sword.user_id
    fill_in "Victim", with: @sword.victim_id
    click_on "Update Sword"

    assert_text "Sword was successfully updated"
    click_on "Back"
  end

  test "destroying a Sword" do
    visit swords_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Sword was successfully destroyed"
  end
end
