require 'test_helper'

class FnafsControllerTest < ActionController::TestCase
  setup do
    @fnaf = fnafs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:fnafs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create fnaf" do
    assert_difference('Fnaf.count') do
      post :create, fnaf: { first_game: @fnaf.first_game, gender: @fnaf.gender, name: @fnaf.name, picture: @fnaf.picture, second_game: @fnaf.second_game, species: @fnaf.species, third_game: @fnaf.third_game }
    end

    assert_redirected_to fnaf_path(assigns(:fnaf))
  end

  test "should show fnaf" do
    get :show, id: @fnaf
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @fnaf
    assert_response :success
  end

  test "should update fnaf" do
    patch :update, id: @fnaf, fnaf: { first_game: @fnaf.first_game, gender: @fnaf.gender, name: @fnaf.name, picture: @fnaf.picture, second_game: @fnaf.second_game, species: @fnaf.species, third_game: @fnaf.third_game }
    assert_redirected_to fnaf_path(assigns(:fnaf))
  end

  test "should destroy fnaf" do
    assert_difference('Fnaf.count', -1) do
      delete :destroy, id: @fnaf
    end

    assert_redirected_to fnafs_path
  end
end
