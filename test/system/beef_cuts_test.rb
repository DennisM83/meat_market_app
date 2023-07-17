require "application_system_test_case"

class BeefCutsTest < ApplicationSystemTestCase
  setup do
    @beef_cut = beef_cuts(:one)
  end

  test "visiting the index" do
    visit beef_cuts_url
    assert_selector "h1", text: "Beef cuts"
  end

  test "should create beef cut" do
    visit beef_cuts_url
    click_on "New beef cut"

    fill_in "Cut type", with: @beef_cut.cut_type
    fill_in "Description", with: @beef_cut.description
    fill_in "Muscle anatomy", with: @beef_cut.muscle_anatomy
    fill_in "Name", with: @beef_cut.name
    fill_in "Slicing instructions", with: @beef_cut.slicing_instructions
    click_on "Create Beef cut"

    assert_text "Beef cut was successfully created"
    click_on "Back"
  end

  test "should update Beef cut" do
    visit beef_cut_url(@beef_cut)
    click_on "Edit this beef cut", match: :first

    fill_in "Cut type", with: @beef_cut.cut_type
    fill_in "Description", with: @beef_cut.description
    fill_in "Muscle anatomy", with: @beef_cut.muscle_anatomy
    fill_in "Name", with: @beef_cut.name
    fill_in "Slicing instructions", with: @beef_cut.slicing_instructions
    click_on "Update Beef cut"

    assert_text "Beef cut was successfully updated"
    click_on "Back"
  end

  test "should destroy Beef cut" do
    visit beef_cut_url(@beef_cut)
    click_on "Destroy this beef cut", match: :first

    assert_text "Beef cut was successfully destroyed"
  end
end
