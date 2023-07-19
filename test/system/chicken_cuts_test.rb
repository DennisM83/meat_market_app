require "application_system_test_case"

class ChickenCutsTest < ApplicationSystemTestCase
  setup do
    @chicken_cut = chicken_cuts(:one)
  end

  test "visiting the index" do
    visit chicken_cuts_url
    assert_selector "h1", text: "Chicken cuts"
  end

  test "should create chicken cut" do
    visit chicken_cuts_url
    click_on "New chicken cut"

    fill_in "Cut type", with: @chicken_cut.cut_type
    fill_in "Description", with: @chicken_cut.description
    fill_in "Muscle anatomy", with: @chicken_cut.muscle_anatomy
    fill_in "Name", with: @chicken_cut.name
    fill_in "Slicing instructions", with: @chicken_cut.slicing_instructions
    click_on "Create Chicken cut"

    assert_text "Chicken cut was successfully created"
    click_on "Back"
  end

  test "should update Chicken cut" do
    visit chicken_cut_url(@chicken_cut)
    click_on "Edit this chicken cut", match: :first

    fill_in "Cut type", with: @chicken_cut.cut_type
    fill_in "Description", with: @chicken_cut.description
    fill_in "Muscle anatomy", with: @chicken_cut.muscle_anatomy
    fill_in "Name", with: @chicken_cut.name
    fill_in "Slicing instructions", with: @chicken_cut.slicing_instructions
    click_on "Update Chicken cut"

    assert_text "Chicken cut was successfully updated"
    click_on "Back"
  end

  test "should destroy Chicken cut" do
    visit chicken_cut_url(@chicken_cut)
    click_on "Destroy this chicken cut", match: :first

    assert_text "Chicken cut was successfully destroyed"
  end
end
