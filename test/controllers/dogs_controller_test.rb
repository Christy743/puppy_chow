# require 'test_helper'
#
# class DogsControllerTest < ActionDispatch::IntegrationTest
#   setup do
#     @user = users(:one)
#     @token = TokiToki.encode(@user.login)
#     @dog = @user.dogs.first
#     #@dog = dogs(:one)
#   end
#
#   test "should get index" do
#     get dogs_url, as: :json
#     assert_response :success
#   end
#
#   test "should create dog" do
#     assert_difference('Dog.count') do
#       post dogs_url, params: {
#         token: @token,
#         dog: {
#           age: @dog.age,
#           name: @dog.name,
#           user_id: @dog.user_id,
#           weight: @dog.weight
#         }
#       }, as: :json
#     end
#
#     assert_response 201
#   end
#
#   test "should show dog" do
#     get dog_url(@dog), params: {
#       token: @token
#     }
#     assert_response :success
#   end
#
#   test "should update dog" do
#     patch dog_url(@dog), params: { dog: { age: @dog.age, name: @dog.name, user_id: @dog.user_id, weight: @dog.weight } }, as: :json
#     assert_response 200
#   end
#
#   test "should destroy dog" do
#     assert_difference('Dog.count', -1) do
#       delete dog_url(@dog), as: :json
#     end
#
#     assert_response 204
#   end
# end
