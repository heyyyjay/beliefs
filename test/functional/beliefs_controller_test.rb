require 'test_helper'

class BeliefsControllerTest < ActionController::TestCase
  setup do
    @belief = beliefs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:beliefs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create belief" do
    assert_difference('Belief.count') do
      post :create, belief: { description: @belief.description }
    end

    assert_redirected_to belief_path(assigns(:belief))
  end

  test "should show belief" do
    get :show, id: @belief
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @belief
    assert_response :success
  end

  test "should update belief" do
    put :update, id: @belief, belief: { description: @belief.description }
    assert_redirected_to belief_path(assigns(:belief))
  end

  test "should destroy belief" do
    assert_difference('Belief.count', -1) do
      delete :destroy, id: @belief
    end

    assert_redirected_to beliefs_path
  end
end
