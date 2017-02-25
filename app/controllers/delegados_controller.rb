class DelegadosController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  before_action -> { redireciona_usuario(:pode_postar_noticia?) }, except: [:index, :show]

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
  end

  def update
  end

  def delegado_params
    params.require(:delegado).permit(:nome, :email, :id_wca, :local)
  end
end
