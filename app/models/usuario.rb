class Usuario < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # has_many :inscricoes
  has_one :associado

  attr_accessor :current_usuario

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
