require 'test_helper'

class EpochesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @epoch = epoches(:one)
  end

  test "should get index" do
    get epoches_url, as: :json
    assert_response :success
  end

  test "should create epoch" do
    assert_difference('Epoch.count') do
      post epoches_url, params: { epoch: { date: @epoch.date } }, as: :json
    end

    assert_response 201
  end

  test "should show epoch" do
    get epoch_url(@epoch), as: :json
    assert_response :success
  end

  test "should update epoch" do
    patch epoch_url(@epoch), params: { epoch: { date: @epoch.date } }, as: :json
    assert_response 200
  end

  test "should destroy epoch" do
    assert_difference('Epoch.count', -1) do
      delete epoch_url(@epoch), as: :json
    end

    assert_response 204
  end
end
