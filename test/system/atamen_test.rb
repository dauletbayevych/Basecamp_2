require "application_system_test_case"

class AtamenTest < ApplicationSystemTestCase
  setup do
    @ataman = atamen(:one)
  end

  test "visiting the index" do
    visit atamen_url
    assert_selector "h1", text: "Atamen"
  end

  test "should create ataman" do
    visit atamen_url
    click_on "New ataman"

    fill_in "Project", with: @ataman.project_id
    click_on "Create Ataman"

    assert_text "Ataman was successfully created"
    click_on "Back"
  end

  test "should update Ataman" do
    visit ataman_url(@ataman)
    click_on "Edit this ataman", match: :first

    fill_in "Project", with: @ataman.project_id
    click_on "Update Ataman"

    assert_text "Ataman was successfully updated"
    click_on "Back"
  end

  test "should destroy Ataman" do
    visit ataman_url(@ataman)
    click_on "Destroy this ataman", match: :first

    assert_text "Ataman was successfully destroyed"
  end
end
