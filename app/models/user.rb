class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # has_many :inscricoes
  has_many :noticias, foreign_key: :id_autor
  has_one :associado

  attr_accessor :current_user

  def admin?
    tipo == 'a'
  end

  def diretoria?
    tipo == 'd'
  end

  def pode_postar_noticia?
    admin? || diretoria?
  end

  def pode_editar_associado?
    admin? || diretoria?
  end
end
