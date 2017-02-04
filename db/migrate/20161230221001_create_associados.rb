class CreateAssociados < ActiveRecord::Migration
  def change
    create_table :associados do |t|
      t.integer :usuario_id
      t.date :data_cadastro
      t.date :data_vencimento
      t.timestamps null: false
    end
  end
end
