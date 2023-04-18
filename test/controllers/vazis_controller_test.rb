require "test_helper"

class VazisControllerTest < ActionDispatch::IntegrationTest
  setup do
    @vazi = vazis(:one)
  end

  test "should get index" do
    get vazis_url
    assert_response :success
  end

  test "should get new" do
    get new_vazi_url
    assert_response :success
  end

  test "should create vazi" do
    assert_difference("Vazi.count") do
      post vazis_url, params: { vazi: { name: @vazi.name, project_id: @vazi.project_id } }
    end

    assert_redirected_to vazi_url(Vazi.last)
  end

  test "should show vazi" do
    get vazi_url(@vazi)
    assert_response :success
  end

  test "should get edit" do
    get edit_vazi_url(@vazi)
    assert_response :success
  end

  test "should update vazi" do
    patch vazi_url(@vazi), params: { vazi: { name: @vazi.name, project_id: @vazi.project_id } }
    assert_redirected_to vazi_url(@vazi)
  end

  test "should destroy vazi" do
    assert_difference("Vazi.count", -1) do
      delete vazi_url(@vazi)
    end

    assert_redirected_to vazis_url
  end
end
