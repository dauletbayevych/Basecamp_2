require "test_helper"

class AtamenControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ataman = atamen(:one)
  end

  test "should get index" do
    get atamen_url
    assert_response :success
  end

  test "should get new" do
    get new_ataman_url
    assert_response :success
  end

  test "should create ataman" do
    assert_difference("Ataman.count") do
      post atamen_url, params: { ataman: { project_id: @ataman.project_id } }
    end

    assert_redirected_to ataman_url(Ataman.last)
  end

  test "should show ataman" do
    get ataman_url(@ataman)
    assert_response :success
  end

  test "should get edit" do
    get edit_ataman_url(@ataman)
    assert_response :success
  end

  test "should update ataman" do
    patch ataman_url(@ataman), params: { ataman: { project_id: @ataman.project_id } }
    assert_redirected_to ataman_url(@ataman)
  end

  test "should destroy ataman" do
    assert_difference("Ataman.count", -1) do
      delete ataman_url(@ataman)
    end

    assert_redirected_to atamen_url
  end
end
