class Evento < ActiveRecord::Base
  validates :nome, :data_inicio, :data_fim, :local, :endereco, presence: true

  before_validation :gerar_codigo
  private def gerar_codigo
    self.codigo = nome.parameterize
  end
end
