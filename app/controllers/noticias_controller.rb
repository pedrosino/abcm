class NoticiasController < ApplicationController
  def index
    #@noticias = Noticia.all
  end

  def new
  end

  def create
    render plain: params[:noticia].inspect
  end

  def update
  end

  def destroy
  end
end
