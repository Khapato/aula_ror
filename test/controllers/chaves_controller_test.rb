require "test_helper"

class ChavesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @chafe = chaves(:one)
  end

  test "should get index" do
    get chaves_url
    assert_response :success
  end

  test "should get new" do
    get new_chafe_url
    assert_response :success
  end

  test "should create chafe" do
    assert_difference("Chafe.count") do
      post chaves_url, params: { chafe: { descricao: @chafe.descricao, identificador: @chafe.identificador } }
    end

    assert_redirected_to chafe_url(Chafe.last)
  end

  test "should show chafe" do
    get chafe_url(@chafe)
    assert_response :success
  end

  test "should get edit" do
    get edit_chafe_url(@chafe)
    assert_response :success
  end

  test "should update chafe" do
    patch chafe_url(@chafe), params: { chafe: { descricao: @chafe.descricao, identificador: @chafe.identificador } }
    assert_redirected_to chafe_url(@chafe)
  end

  test "should destroy chafe" do
    assert_difference("Chafe.count", -1) do
      delete chafe_url(@chafe)
    end

    assert_redirected_to chaves_url
  end
end
