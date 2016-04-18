require 'test_helper'

class EmploymentContractsControllerTest < ActionController::TestCase
  setup do
    @employment_contract = employment_contracts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:employment_contracts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create employment_contract" do
    assert_difference('EmploymentContract.count') do
      post :create, employment_contract: { date_and: @employment_contract.date_and, date_start: @employment_contract.date_start }
    end

    assert_redirected_to employment_contract_path(assigns(:employment_contract))
  end

  test "should show employment_contract" do
    get :show, id: @employment_contract
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @employment_contract
    assert_response :success
  end

  test "should update employment_contract" do
    patch :update, id: @employment_contract, employment_contract: { date_and: @employment_contract.date_and, date_start: @employment_contract.date_start }
    assert_redirected_to employment_contract_path(assigns(:employment_contract))
  end

  test "should destroy employment_contract" do
    assert_difference('EmploymentContract.count', -1) do
      delete :destroy, id: @employment_contract
    end

    assert_redirected_to employment_contracts_path
  end
end
