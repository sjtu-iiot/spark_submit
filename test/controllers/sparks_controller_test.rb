require 'test_helper'

class SparksControllerTest < ActionController::TestCase
  setup do
    @spark = sparks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sparks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create spark" do
    assert_difference('Spark.count') do
      post :create, spark: { classname: @spark.classname, cmd: @spark.cmd, cmdresult: @spark.cmdresult, cores: @spark.cores, master: @spark.master, memory: @spark.memory, parameters: @spark.parameters }
    end

    assert_redirected_to spark_path(assigns(:spark))
  end

  test "should show spark" do
    get :show, id: @spark
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @spark
    assert_response :success
  end

  test "should update spark" do
    patch :update, id: @spark, spark: { classname: @spark.classname, cmd: @spark.cmd, cmdresult: @spark.cmdresult, cores: @spark.cores, master: @spark.master, memory: @spark.memory, parameters: @spark.parameters }
    assert_redirected_to spark_path(assigns(:spark))
  end

  test "should destroy spark" do
    assert_difference('Spark.count', -1) do
      delete :destroy, id: @spark
    end

    assert_redirected_to sparks_path
  end
end
