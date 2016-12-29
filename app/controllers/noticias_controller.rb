class NoticiasController < ApplicationController
  def index
    @noticias = Noticia.all
  end

  def new
    @noticia = Noticia.new
  end

  def create
    @noticia = Noticia.new(noticia_params)

    if @noticia.save
      #flash[:success] = "Notícia criada"
      redirect_to edit_noticia_path(@noticia)
    end
  end

  def edit
    @noticia = Noticia.find(params[:id])
  end

  def update
    @noticia = Noticia.find(params[:id])
    if @noticia.update_attributes(noticia_params)
      #flash[:success] = "Notícia salva com sucesso!"
      redirect_to noticias_path
    else
      #flash[:danger] = "Falha ao salvar!"
      render :edit
    end
  end

  def destroy
  end

  def noticia_params
    noticia_params = params.require(:noticia).permit(:titulo, :slug, :texto, :id_autor, :visivel)
  end
end
