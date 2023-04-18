require "application_system_test_case"

class PochesTest < ApplicationSystemTestCase
  setup do
    @poch = poches(:one)
  end

  test "visiting the index" do
    visit poches_url
    assert_selector "h1", text: "Poches"
  end

  test "should create poch" do
    visit poches_url
    click_on "New poch"

    fill_in "Name", with: @poch.name
    fill_in "Project", with: @poch.project_id
    click_on "Create Poch"

    assert_text "Poch was successfully created"
    click_on "Back"
  end

  test "should update Poch" do
    visit poch_url(@poch)
    click_on "Edit this poch", match: :first

    fill_in "Name", with: @poch.name
    fill_in "Project", with: @poch.project_id
    click_on "Update Poch"

    assert_text "Poch was successfully updated"
    click_on "Back"
  end

  test "should destroy Poch" do
    visit poch_url(@poch)
    click_on "Destroy this poch", match: :first

    assert_text "Poch was successfully destroyed"
  end
end
