require 'test_helper'

class UrlsControllerTest < ActionController::TestCase
  test "should get _search" do
    get :_search
    assert_response :success
  end

  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should get search" do
    get :search
    assert_response :success
  end

  test "should get welcome" do
    get :welcome
    assert_response :success
  end

end
