require "application_system_test_case"

class VazisTest < ApplicationSystemTestCase
  setup do
    @vazi = vazis(:one)
  end

  test "visiting the index" do
    visit vazis_url
    assert_selector "h1", text: "Vazis"
  end

  test "should create vazi" do
    visit vazis_url
    click_on "New vazi"

    fill_in "Name", with: @vazi.name
    fill_in "Project", with: @vazi.project_id
    click_on "Create Vazi"

    assert_text "Vazi was successfully created"
    click_on "Back"
  end

  test "should update Vazi" do
    visit vazi_url(@vazi)
    click_on "Edit this vazi", match: :first

    fill_in "Name", with: @vazi.name
    fill_in "Project", with: @vazi.project_id
    click_on "Update Vazi"

    assert_text "Vazi was successfully updated"
    click_on "Back"
  end

  test "should destroy Vazi" do
    visit vazi_url(@vazi)
    click_on "Destroy this vazi", match: :first

    assert_text "Vazi was successfully destroyed"
  end
end
