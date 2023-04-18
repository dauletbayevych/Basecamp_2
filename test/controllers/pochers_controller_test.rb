require "test_helper"

class PochersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pocher = pochers(:one)
  end

  test "should get index" do
    get pochers_url
    assert_response :success
  end

  test "should get new" do
    get new_pocher_url
    assert_response :success
  end

  test "should create pocher" do
    assert_difference("Pocher.count") do
      post pochers_url, params: { pocher: { poch_id: @pocher.poch_id, title: @pocher.title } }
    end

    assert_redirected_to pocher_url(Pocher.last)
  end

  test "should show pocher" do
    get pocher_url(@pocher)
    assert_response :success
  end

  test "should get edit" do
    get edit_pocher_url(@pocher)
    assert_response :success
  end

  test "should update pocher" do
    patch pocher_url(@pocher), params: { pocher: { poch_id: @pocher.poch_id, title: @pocher.title } }
    assert_redirected_to pocher_url(@pocher)
  end

  test "should destroy pocher" do
    assert_difference("Pocher.count", -1) do
      delete pocher_url(@pocher)
    end

    assert_redirected_to pochers_url
  end
end
