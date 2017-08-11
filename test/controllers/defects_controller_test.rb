require 'test_helper'

class DefectsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @defect = defects(:one)
  end

  test "should get index" do
    get defects_url, as: :json
    assert_response :success
  end

  test "should create defect" do
    assert_difference('Defect.count') do
      post defects_url, params: { defect: { description: @defect.description, location: @defect.location } }, as: :json
    end

    assert_response 201
  end

  test "should show defect" do
    get defect_url(@defect), as: :json
    assert_response :success
  end

  test "should update defect" do
    patch defect_url(@defect), params: { defect: { description: @defect.description, location: @defect.location } }, as: :json
    assert_response 200
  end

  test "should destroy defect" do
    assert_difference('Defect.count', -1) do
      delete defect_url(@defect), as: :json
    end

    assert_response 204
  end
end
