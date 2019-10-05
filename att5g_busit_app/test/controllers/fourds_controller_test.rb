require 'test_helper'

class FourdsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @fourd = fourds(:one)
  end

  test "should get index" do
    get fourds_url
    assert_response :success
  end

  test "should get new" do
    get new_fourd_url
    assert_response :success
  end

  test "should create fourd" do
    assert_difference('Fourd.count') do
      post fourds_url, params: { fourd: {  } }
    end

    assert_redirected_to fourd_url(Fourd.last)
  end

  test "should show fourd" do
    get fourd_url(@fourd)
    assert_response :success
  end

  test "should get edit" do
    get edit_fourd_url(@fourd)
    assert_response :success
  end

  test "should update fourd" do
    patch fourd_url(@fourd), params: { fourd: {  } }
    assert_redirected_to fourd_url(@fourd)
  end

  test "should destroy fourd" do
    assert_difference('Fourd.count', -1) do
      delete fourd_url(@fourd)
    end

    assert_redirected_to fourds_url
  end
end
