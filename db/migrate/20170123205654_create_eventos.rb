class CreateEventos < ActiveRecord::Migration
  def change
    create_table :eventos do |t|
      t.string :nome
      t.datetime :data_inicio
      t.datetime :data_fim
      t.string :local
      t.string :endereco
      t.string :site
      t.text :intro
      t.text :modalidades
      t.text :cronograma
      t.text :inscricoes
      t.text :resultados

      t.timestamps null: false
    end
  end
end
