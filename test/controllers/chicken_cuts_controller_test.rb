require "test_helper"

class ChickenCutsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @chicken_cut = chicken_cuts(:one)
  end

  test "should get index" do
    get chicken_cuts_url
    assert_response :success
  end

  test "should get new" do
    get new_chicken_cut_url
    assert_response :success
  end

  test "should create chicken_cut" do
    assert_difference("ChickenCut.count") do
      post chicken_cuts_url, params: { chicken_cut: { cut_type: @chicken_cut.cut_type, description: @chicken_cut.description, muscle_anatomy: @chicken_cut.muscle_anatomy, name: @chicken_cut.name, slicing_instructions: @chicken_cut.slicing_instructions } }
    end

    assert_redirected_to chicken_cut_url(ChickenCut.last)
  end

  test "should show chicken_cut" do
    get chicken_cut_url(@chicken_cut)
    assert_response :success
  end

  test "should get edit" do
    get edit_chicken_cut_url(@chicken_cut)
    assert_response :success
  end

  test "should update chicken_cut" do
    patch chicken_cut_url(@chicken_cut), params: { chicken_cut: { cut_type: @chicken_cut.cut_type, description: @chicken_cut.description, muscle_anatomy: @chicken_cut.muscle_anatomy, name: @chicken_cut.name, slicing_instructions: @chicken_cut.slicing_instructions } }
    assert_redirected_to chicken_cut_url(@chicken_cut)
  end

  test "should destroy chicken_cut" do
    assert_difference("ChickenCut.count", -1) do
      delete chicken_cut_url(@chicken_cut)
    end

    assert_redirected_to chicken_cuts_url
  end
end
