class NovosCamposEmEventos < ActiveRecord::Migration
  def up
    add_column :eventos, :codigo, :string
    add_column :eventos, :site_externo, :boolean
  end

  def down
    remove_column :eventos, :codigo
    remove_column :eventos, :site_externo
  end
end
