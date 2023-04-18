require "application_system_test_case"

class PochersTest < ApplicationSystemTestCase
  setup do
    @pocher = pochers(:one)
  end

  test "visiting the index" do
    visit pochers_url
    assert_selector "h1", text: "Pochers"
  end

  test "should create pocher" do
    visit pochers_url
    click_on "New pocher"

    fill_in "Poch", with: @pocher.poch_id
    fill_in "Title", with: @pocher.title
    click_on "Create Pocher"

    assert_text "Pocher was successfully created"
    click_on "Back"
  end

  test "should update Pocher" do
    visit pocher_url(@pocher)
    click_on "Edit this pocher", match: :first

    fill_in "Poch", with: @pocher.poch_id
    fill_in "Title", with: @pocher.title
    click_on "Update Pocher"

    assert_text "Pocher was successfully updated"
    click_on "Back"
  end

  test "should destroy Pocher" do
    visit pocher_url(@pocher)
    click_on "Destroy this pocher", match: :first

    assert_text "Pocher was successfully destroyed"
  end
end
