require 'test_helper'

class FilhosControllerTest < ActionController::TestCase
  setup do
    @filho = filhos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:filhos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create filho" do
    assert_difference('Filho.count') do
      post :create, filho: { name: @filho.name, pai_id: @filho.pai_id, sexo: @filho.sexo }
    end

    assert_redirected_to filho_path(assigns(:filho))
  end

  test "should show filho" do
    get :show, id: @filho
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @filho
    assert_response :success
  end

  test "should update filho" do
    patch :update, id: @filho, filho: { name: @filho.name, pai_id: @filho.pai_id, sexo: @filho.sexo }
    assert_redirected_to filho_path(assigns(:filho))
  end

  test "should destroy filho" do
    assert_difference('Filho.count', -1) do
      delete :destroy, id: @filho
    end

    assert_redirected_to filhos_path
  end
end
