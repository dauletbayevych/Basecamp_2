require "test_helper"

class PochesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @poch = poches(:one)
  end

  test "should get index" do
    get poches_url
    assert_response :success
  end

  test "should get new" do
    get new_poch_url
    assert_response :success
  end

  test "should create poch" do
    assert_difference("Poch.count") do
      post poches_url, params: { poch: { name: @poch.name, project_id: @poch.project_id } }
    end

    assert_redirected_to poch_url(Poch.last)
  end

  test "should show poch" do
    get poch_url(@poch)
    assert_response :success
  end

  test "should get edit" do
    get edit_poch_url(@poch)
    assert_response :success
  end

  test "should update poch" do
    patch poch_url(@poch), params: { poch: { name: @poch.name, project_id: @poch.project_id } }
    assert_redirected_to poch_url(@poch)
  end

  test "should destroy poch" do
    assert_difference("Poch.count", -1) do
      delete poch_url(@poch)
    end

    assert_redirected_to poches_url
  end
end
