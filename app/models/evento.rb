class Evento < ActiveRecord::Base
  validates :nome, :data_inicio, :data_fim, :local, :endereco, presence: true
end
