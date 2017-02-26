class DelegadosController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  before_action -> { redireciona_usuario(:pode_criar_delegado?) }, except: [:index, :show]

  def index
    @delegados = Delegado.all.order(:nome)
  end

  def new
    @delegado = Delegado.new
  end

  def create
    @delegado = Delegado.new(delegado_params)
    if @delegado.save
      flash[:success] = 'Delegado criado com sucesso!'
      redirect_to delegados_path
    else
      flash[:danger] = 'Falha ao criar delegado'
      render :new
    end
  end

  def edit
    @delegado = Delegado.find(params[:id])
  end

  def update
    @delegado = Delegado.find(params[:id])
    if @delegado.update_attributes(delegado_params)
      flash[:success] = 'Delegado salvo com sucesso!'
      redirect_to delegados_path
    else
      flash[:danger] = 'Falha ao salvar!'
      render :edit
    end
  end

  def delegado_params
    params.require(:delegado).permit(:nome, :email, :id_wca, :local)
  end
end
