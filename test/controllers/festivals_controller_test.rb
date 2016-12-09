require 'test_helper'

class FestivalsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @festival = festivals(:one)
  end

  test "should get index" do
    get festivals_url, as: :json
    assert_response :success
  end

  test "should create festival" do
    assert_difference('Festival.count') do
      post festivals_url, params: { festival: { cost: @festival.cost, details: @festival.details, finish: @festival.finish, image: @festival.image, location: @festival.location, minimum_age: @festival.minimum_age, start: @festival.start } }, as: :json
    end

    assert_response 201
  end

  test "should show festival" do
    get festival_url(@festival), as: :json
    assert_response :success
  end

  test "should update festival" do
    patch festival_url(@festival), params: { festival: { cost: @festival.cost, details: @festival.details, finish: @festival.finish, image: @festival.image, location: @festival.location, minimum_age: @festival.minimum_age, start: @festival.start } }, as: :json
    assert_response 200
  end

  test "should destroy festival" do
    assert_difference('Festival.count', -1) do
      delete festival_url(@festival), as: :json
    end

    assert_response 204
  end
end
