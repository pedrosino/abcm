class NovosCamposEmEventos < ActiveRecord::Migration
  def up
    add_column :eventos, :codigo, :string
    add_column :eventos, :site_externo, :boolean
    change_column :eventos, :data_inicio, :date
    change_column :eventos, :data_fim, :date
  end

  def down
    remove_column :eventos, :codigo
    remove_column :eventos, :site_externo
  end
end
