class AssociadosController < ApplicationController
  before_action :authenticate_user!, except: [:index]
  before_action -> { redireciona_usuario(:pode_editar_associado?) }, except: [:index]

  def index
    @associados = Associado.where('data_vencimento > ?', Date.today)
  end

  def admin
    @usuarios = User.all
  end

  def create
    @associado = Associado.new(associado_params)
    if @associado.save
      flash[:success] = "Salvo com sucesso"
      redirect_to admin_associados_path
    else
      flash[:danger] = "Falha ao salvar!"
      render :edit
    end
  end

  def edit
    @associado = Associado.find_or_initialize_by(user_id: params[:id])
  end

  def update
    @associado = Associado.find(params[:id])
    if @associado.update_attributes(associado_params)
      flash[:success] = "Salvo com sucesso"
      redirect_to admin_associados_path
    else
      flash[:danger] = "Falha ao salvar!"
      render :edit
    end
  end

  def associado_params
    associado_params = params.require(:associado).permit(:user_id, :data_cadastro, :data_vencimento)
  end
end
