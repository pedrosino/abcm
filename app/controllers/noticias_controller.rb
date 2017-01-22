class NoticiasController < ApplicationController
  before_action :authenticate_usuario!, except: [:index, :show]
  before_action -> { redireciona_usuario(:pode_postar_noticia?) }, except: [:index, :show]

  def index
    @noticias = Noticia.where(visivel: true).order(:created_at).reverse
  end

  def new
    @noticia = Noticia.new
  end

  def create
    @noticia = Noticia.new(noticia_params)
    @noticia.id_autor = current_usuario.id
    if @noticia.save
      flash[:success] = "Notícia criada"
      redirect_to edit_noticia_path(@noticia)
    else
      flash[:danger] = "Falha ao criar notícia"
      render :new
    end
  end

  def show
    @noticia = Noticia.find(params[:id])
  end

  def edit
    @noticia = Noticia.find(params[:id])
  end

  def update
    @noticia = Noticia.find(params[:id])
    if @noticia.update_attributes(noticia_params)
      flash[:success] = "Notícia salva com sucesso!"
      redirect_to noticia_path(@noticia)
    else
      flash[:danger] = "Falha ao salvar!"
      render :edit
    end
  end

  def destroy
  end

  def noticia_params
    noticia_params = params.require(:noticia).permit(:titulo, :slug, :texto, :id_autor, :visivel)
  end
end
