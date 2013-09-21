require 'test_helper'

class DeedsControllerTest < ActionController::TestCase
  setup do
    @deed = deeds(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:deeds)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create deed" do
    assert_difference('Deed.count') do
      post :create, deed: { classroom_id: @deed.classroom_id, from_id: @deed.from_id, school_id: @deed.school_id, teacher_id: @deed.teacher_id, to_id: @deed.to_id, what: @deed.what, when: @deed.when }
    end

    assert_redirected_to deed_path(assigns(:deed))
  end

  test "should show deed" do
    get :show, id: @deed
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @deed
    assert_response :success
  end

  test "should update deed" do
    patch :update, id: @deed, deed: { classroom_id: @deed.classroom_id, from_id: @deed.from_id, school_id: @deed.school_id, teacher_id: @deed.teacher_id, to_id: @deed.to_id, what: @deed.what, when: @deed.when }
    assert_redirected_to deed_path(assigns(:deed))
  end

  test "should destroy deed" do
    assert_difference('Deed.count', -1) do
      delete :destroy, id: @deed
    end

    assert_redirected_to deeds_path
  end
end
