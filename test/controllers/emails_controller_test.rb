require 'test_helper'

class EmailsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get emails_index_url
    assert_response :success
  end

  test "should get destroy" do
    get emails_destroy_url
    assert_response :success
  end

  test "should get show" do
    get emails_show_url
    assert_response :success
  end

  test "should get update" do
    get emails_update_url
    assert_response :success
  end

end
