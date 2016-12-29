class AssociadosController < ApplicationController
  def index
    @associados = Associado.where("data_cadastro is not null")
  end

  def new
  end

  def create
    @associado = Associado.new(associado_params)

    @associado.save
    redirect_to associados_path
  end

  def associado_params
    associado_params = params.require(:associado).permit(:nome, :email, :cpf, :identidade, :endereco, :data_cadastro, :data_vencimento, :id_wca, :id_forum)
  end
end