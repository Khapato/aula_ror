require "application_system_test_case"

class RegistrosTest < ApplicationSystemTestCase
  setup do
    @registro = registros(:one)
  end

  test "visiting the index" do
    visit registros_url
    assert_selector "h1", text: "Registros"
  end

  test "should create registro" do
    visit registros_url
    click_on "New registro"

    fill_in "Chave", with: @registro.chave_id
    fill_in "Funcionario", with: @registro.funcionario_id
    fill_in "Hora devolucao", with: @registro.hora_devolucao
    fill_in "Hora retirada", with: @registro.hora_retirada
    click_on "Create Registro"

    assert_text "Registro was successfully created"
    click_on "Back"
  end

  test "should update Registro" do
    visit registro_url(@registro)
    click_on "Edit this registro", match: :first

    fill_in "Chave", with: @registro.chave_id
    fill_in "Funcionario", with: @registro.funcionario_id
    fill_in "Hora devolucao", with: @registro.hora_devolucao
    fill_in "Hora retirada", with: @registro.hora_retirada
    click_on "Update Registro"

    assert_text "Registro was successfully updated"
    click_on "Back"
  end

  test "should destroy Registro" do
    visit registro_url(@registro)
    click_on "Destroy this registro", match: :first

    assert_text "Registro was successfully destroyed"
  end
end
