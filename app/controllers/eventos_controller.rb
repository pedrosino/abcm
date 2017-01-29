class EventosController < ApplicationController
  before_action :authenticate_usuario!, except: [:index, :show]
  before_action -> { redireciona_usuario(:pode_postar_evento?) }, except: [:index, :show]

  def index
    @eventos = Evento.order(:data_inicio)
  end

  def new
    @evento = Evento.new
  end

  def create
    @evento = Evento.new(evento_params)
    if @evento.save
      flash[:success] = "Evento criado"
      redirect_to evento_path(@evento)
    else
      flash[:danger] = "Falha ao criar evento"
      render :new
    end
  end

  def show
    @evento = Evento.find(params[:id])
  end

  def edit
    @evento = Evento.find(params[:id])
  end

  def update
    @evento = Evento.find(params[:id])
    if @evento.update_attributes(evento_params)
      flash[:success] = "Evento salvo com sucesso!"
      redirect_to evento_path(@evento)
    else
      flash[:danger] = "Falha ao salvar!"
      render :edit
    end
  end

  def destroy
  end

  def evento_params
    evento_params = params.require(:evento).permit(:nome, :data_inicio, :data_fim, :local, :endereco, :site, :intro, :modalidades, :cronograma, :inscricoes, :resultados)
  end

end
