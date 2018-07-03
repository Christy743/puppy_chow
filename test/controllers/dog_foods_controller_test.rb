require 'test_helper'

class DogFoodsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @dog_food = dog_foods(:one)
  end

  test "should get index" do
    get dog_foods_url, as: :json
    assert_response :success
  end

  test "should create dog_food" do
    assert_difference('DogFood.count') do
      post dog_foods_url, params: { dog_food: { can: @dog_food.can, cups: @dog_food.cups, dog_id: @dog_food.dog_id, food_type: @dog_food.food_type, user_id: @dog_food.user_id } }, as: :json
    end

    assert_response 201
  end

  test "should show dog_food" do
    get dog_food_url(@dog_food), as: :json
    assert_response :success
  end

  test "should update dog_food" do
    patch dog_food_url(@dog_food), params: { dog_food: { can: @dog_food.can, cups: @dog_food.cups, dog_id: @dog_food.dog_id, food_type: @dog_food.food_type, user_id: @dog_food.user_id } }, as: :json
    assert_response 200
  end

  test "should destroy dog_food" do
    assert_difference('DogFood.count', -1) do
      delete dog_food_url(@dog_food), as: :json
    end

    assert_response 204
  end
end
