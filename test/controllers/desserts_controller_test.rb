require 'test_helper'

class DessertsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @dessert = desserts(:one)
  end

  test "should get index" do
    get desserts_url, as: :json
    assert_response :success
  end

  test "should create dessert" do
    assert_difference('Dessert.count') do
      post desserts_url, params: { dessert: { rating: @dessert.rating, title: @dessert.title } }, as: :json
    end

    assert_response 201
  end

  test "should show dessert" do
    get dessert_url(@dessert), as: :json
    assert_response :success
  end

  test "should update dessert" do
    patch dessert_url(@dessert), params: { dessert: { rating: @dessert.rating, title: @dessert.title } }, as: :json
    assert_response 200
  end

  test "should destroy dessert" do
    assert_difference('Dessert.count', -1) do
      delete dessert_url(@dessert), as: :json
    end

    assert_response 204
  end
end
