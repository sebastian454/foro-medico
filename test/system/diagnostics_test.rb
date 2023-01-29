require "application_system_test_case"

class DiagnosticsTest < ApplicationSystemTestCase
  setup do
    @diagnostic = diagnostics(:one)
  end

  test "visiting the index" do
    visit diagnostics_url
    assert_selector "h1", text: "Diagnostics"
  end

  test "should create diagnostic" do
    visit diagnostics_url
    click_on "New diagnostic"

    fill_in "Code", with: @diagnostic.code
    fill_in "Description", with: @diagnostic.description
    fill_in "Sexo", with: @diagnostic.sexo
    click_on "Create Diagnostic"

    assert_text "Diagnostic was successfully created"
    click_on "Back"
  end

  test "should update Diagnostic" do
    visit diagnostic_url(@diagnostic)
    click_on "Edit this diagnostic", match: :first

    fill_in "Code", with: @diagnostic.code
    fill_in "Description", with: @diagnostic.description
    fill_in "Sexo", with: @diagnostic.sexo
    click_on "Update Diagnostic"

    assert_text "Diagnostic was successfully updated"
    click_on "Back"
  end

  test "should destroy Diagnostic" do
    visit diagnostic_url(@diagnostic)
    click_on "Destroy this diagnostic", match: :first

    assert_text "Diagnostic was successfully destroyed"
  end
end
