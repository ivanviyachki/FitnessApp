require 'test_helper'

class ExerciseCategoriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @exercise_category = exercise_categories(:one)
  end

  test "should get index" do
    get exercise_categories_url
    assert_response :success
  end

  test "should get new" do
    get new_exercise_category_url
    assert_response :success
  end

  test "should create exercise_category" do
    assert_difference('ExerciseCategory.count') do
      post exercise_categories_url, params: { exercise_category: { name: @exercise_category.name } }
    end

    assert_redirected_to exercise_category_url(ExerciseCategory.last)
  end

  test "should show exercise_category" do
    get exercise_category_url(@exercise_category)
    assert_response :success
  end

  test "should get edit" do
    get edit_exercise_category_url(@exercise_category)
    assert_response :success
  end

  test "should update exercise_category" do
    patch exercise_category_url(@exercise_category), params: { exercise_category: { name: @exercise_category.name } }
    assert_redirected_to exercise_category_url(@exercise_category)
  end

  test "should destroy exercise_category" do
    assert_difference('ExerciseCategory.count', -1) do
      delete exercise_category_url(@exercise_category)
    end

    assert_redirected_to exercise_categories_url
  end
end
