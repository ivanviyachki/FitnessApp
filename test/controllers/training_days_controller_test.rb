require 'test_helper'

class TrainingDaysControllerTest < ActionDispatch::IntegrationTest
  setup do
    @training_day = training_days(:one)
  end

  test "should get index" do
    get training_days_url
    assert_response :success
  end

  test "should get new" do
    get new_training_day_url
    assert_response :success
  end

  test "should create training_day" do
    assert_difference('TrainingDay.count') do
      post training_days_url, params: { training_day: { exercise_id: @training_day.exercise_id, food_id: @training_day.food_id } }
    end

    assert_redirected_to training_day_url(TrainingDay.last)
  end

  test "should show training_day" do
    get training_day_url(@training_day)
    assert_response :success
  end

  test "should get edit" do
    get edit_training_day_url(@training_day)
    assert_response :success
  end

  test "should update training_day" do
    patch training_day_url(@training_day), params: { training_day: { exercise_id: @training_day.exercise_id, food_id: @training_day.food_id } }
    assert_redirected_to training_day_url(@training_day)
  end

  test "should destroy training_day" do
    assert_difference('TrainingDay.count', -1) do
      delete training_day_url(@training_day)
    end

    assert_redirected_to training_days_url
  end
end
