require 'test_helper'

class NotepadsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @notepad = notepads(:one)
  end

  test "should get index" do
    get notepads_url, as: :json
    assert_response :success
  end

  test "should create notepad" do
    assert_difference('Notepad.count') do
      post notepads_url, params: { notepad: { title: @notepad.title, user_id: @notepad.user_id } }, as: :json
    end

    assert_response 201
  end

  test "should show notepad" do
    get notepad_url(@notepad), as: :json
    assert_response :success
  end

  test "should update notepad" do
    patch notepad_url(@notepad), params: { notepad: { title: @notepad.title, user_id: @notepad.user_id } }, as: :json
    assert_response 200
  end

  test "should destroy notepad" do
    assert_difference('Notepad.count', -1) do
      delete notepad_url(@notepad), as: :json
    end

    assert_response 204
  end
end
