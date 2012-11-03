require 'test_helper'

class TorneiosControllerTest < ActionController::TestCase
  setup do
    @torneio = torneios(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:torneios)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create torneio" do
    assert_difference('Torneio.count') do
      post :create, torneio: { buyIn: @torneio.buyIn, formato: @torneio.formato, jogadoresPorMesa: @torneio.jogadoresPorMesa, limite: @torneio.limite, linkExterno: @torneio.linkExterno, moeda: @torneio.moeda, nome: @torneio.nome, tipoPagamento: @torneio.tipoPagamento, velocidade: @torneio.velocidade }
    end

    assert_redirected_to torneio_path(assigns(:torneio))
  end

  test "should show torneio" do
    get :show, id: @torneio
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @torneio
    assert_response :success
  end

  test "should update torneio" do
    put :update, id: @torneio, torneio: { buyIn: @torneio.buyIn, formato: @torneio.formato, jogadoresPorMesa: @torneio.jogadoresPorMesa, limite: @torneio.limite, linkExterno: @torneio.linkExterno, moeda: @torneio.moeda, nome: @torneio.nome, tipoPagamento: @torneio.tipoPagamento, velocidade: @torneio.velocidade }
    assert_redirected_to torneio_path(assigns(:torneio))
  end

  test "should destroy torneio" do
    assert_difference('Torneio.count', -1) do
      delete :destroy, id: @torneio
    end

    assert_redirected_to torneios_path
  end
end
