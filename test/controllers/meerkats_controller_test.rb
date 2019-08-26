require 'test_helper'

class MeerkatsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get meerkats_index_url
    assert_response :success
  end

  test "should get show" do
    get meerkats_show_url
    assert_response :success
  end

  test "should get new" do
    get meerkats_new_url
    assert_response :success
  end

  test "should get create" do
    get meerkats_create_url
    assert_response :success
  end

  test "should get edit" do
    get meerkats_edit_url
    assert_response :success
  end

  test "should get update" do
    get meerkats_update_url
    assert_response :success
  end

  test "should get destroy" do
    get meerkats_destroy_url
    assert_response :success
  end

end
