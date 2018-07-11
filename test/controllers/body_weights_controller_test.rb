require 'test_helper'

class BodyWeightsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @body_weight = body_weights(:one)
  end

  test "should get index" do
    get body_weights_url
    assert_response :success
  end

  test "should get new" do
    get new_body_weight_url
    assert_response :success
  end

  test "should create body_weight" do
    assert_difference('BodyWeight.count') do
      post body_weights_url, params: { body_weight: { date: @body_weight.date, weight: @body_weight.weight } }
    end

    assert_redirected_to body_weight_url(BodyWeight.last)
  end

  test "should show body_weight" do
    get body_weight_url(@body_weight)
    assert_response :success
  end

  test "should get edit" do
    get edit_body_weight_url(@body_weight)
    assert_response :success
  end

  test "should update body_weight" do
    patch body_weight_url(@body_weight), params: { body_weight: { date: @body_weight.date, weight: @body_weight.weight } }
    assert_redirected_to body_weight_url(@body_weight)
  end

  test "should destroy body_weight" do
    assert_difference('BodyWeight.count', -1) do
      delete body_weight_url(@body_weight)
    end

    assert_redirected_to body_weights_url
  end
end
