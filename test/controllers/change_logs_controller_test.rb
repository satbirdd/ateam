require 'test_helper'

class ChangeLogsControllerTest < ActionController::TestCase
  setup do
    @change_log = change_logs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:change_logs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create change_log" do
    assert_difference('ChangeLog.count') do
      post :create, change_log: { author_id: @change_log.author_id, content: @change_log.content, program_id: @change_log.program_id, title: @change_log.title }
    end

    assert_redirected_to change_log_path(assigns(:change_log))
  end

  test "should show change_log" do
    get :show, id: @change_log
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @change_log
    assert_response :success
  end

  test "should update change_log" do
    patch :update, id: @change_log, change_log: { author_id: @change_log.author_id, content: @change_log.content, program_id: @change_log.program_id, title: @change_log.title }
    assert_redirected_to change_log_path(assigns(:change_log))
  end

  test "should destroy change_log" do
    assert_difference('ChangeLog.count', -1) do
      delete :destroy, id: @change_log
    end

    assert_redirected_to change_logs_path
  end
end
