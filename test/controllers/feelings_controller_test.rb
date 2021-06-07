require 'test_helper'

class FeelingsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get feelings_index_url
    assert_response :success
  end

  test "should get show" do
    get feelings_show_url
    assert_response :success
  end

  test "should get create" do
    get feelings_create_url
    assert_response :success
  end

  test "should get new" do
    get feelings_new_url
    assert_response :success
  end

  test "should get update" do
    get feelings_update_url
    assert_response :success
  end

  test "should get edit" do
    get feelings_edit_url
    assert_response :success
  end

  test "should get results" do
    get feelings_results_url
    assert_response :success
  end

end
