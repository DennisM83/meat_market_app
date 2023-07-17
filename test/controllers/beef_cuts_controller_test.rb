require "test_helper"

class BeefCutsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @beef_cut = beef_cuts(:one)
  end

  test "should get index" do
    get beef_cuts_url
    assert_response :success
  end

  test "should get new" do
    get new_beef_cut_url
    assert_response :success
  end

  test "should create beef_cut" do
    assert_difference("BeefCut.count") do
      post beef_cuts_url, params: { beef_cut: { cut_type: @beef_cut.cut_type, description: @beef_cut.description, muscle_anatomy: @beef_cut.muscle_anatomy, name: @beef_cut.name, slicing_instructions: @beef_cut.slicing_instructions } }
    end

    assert_redirected_to beef_cut_url(BeefCut.last)
  end

  test "should show beef_cut" do
    get beef_cut_url(@beef_cut)
    assert_response :success
  end

  test "should get edit" do
    get edit_beef_cut_url(@beef_cut)
    assert_response :success
  end

  test "should update beef_cut" do
    patch beef_cut_url(@beef_cut), params: { beef_cut: { cut_type: @beef_cut.cut_type, description: @beef_cut.description, muscle_anatomy: @beef_cut.muscle_anatomy, name: @beef_cut.name, slicing_instructions: @beef_cut.slicing_instructions } }
    assert_redirected_to beef_cut_url(@beef_cut)
  end

  test "should destroy beef_cut" do
    assert_difference("BeefCut.count", -1) do
      delete beef_cut_url(@beef_cut)
    end

    assert_redirected_to beef_cuts_url
  end
end
