require 'test_helper'

class DiapersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @diaper = diapers(:one)
  end

  test "should get index" do
    get diapers_url, as: :json
    assert_response :success
  end

  test "should create diaper" do
    assert_difference('Diaper.count') do
      post diapers_url, params: { diaper: { description: @diaper.description, name: @diaper.name, size: @diaper.size, src: @diaper.src } }, as: :json
    end

    assert_response 201
  end

  test "should show diaper" do
    get diaper_url(@diaper), as: :json
    assert_response :success
  end

  test "should update diaper" do
    patch diaper_url(@diaper), params: { diaper: { description: @diaper.description, name: @diaper.name, size: @diaper.size, src: @diaper.src } }, as: :json
    assert_response 200
  end

  test "should destroy diaper" do
    assert_difference('Diaper.count', -1) do
      delete diaper_url(@diaper), as: :json
    end

    assert_response 204
  end
end
