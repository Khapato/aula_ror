require "application_system_test_case"

class ChavesTest < ApplicationSystemTestCase
  setup do
    @chafe = chaves(:one)
  end

  test "visiting the index" do
    visit chaves_url
    assert_selector "h1", text: "Chaves"
  end

  test "should create chafe" do
    visit chaves_url
    click_on "New chafe"

    fill_in "Descricao", with: @chafe.descricao
    fill_in "Identificador", with: @chafe.identificador
    click_on "Create Chafe"

    assert_text "Chafe was successfully created"
    click_on "Back"
  end

  test "should update Chafe" do
    visit chafe_url(@chafe)
    click_on "Edit this chafe", match: :first

    fill_in "Descricao", with: @chafe.descricao
    fill_in "Identificador", with: @chafe.identificador
    click_on "Update Chafe"

    assert_text "Chafe was successfully updated"
    click_on "Back"
  end

  test "should destroy Chafe" do
    visit chafe_url(@chafe)
    click_on "Destroy this chafe", match: :first

    assert_text "Chafe was successfully destroyed"
  end
end
