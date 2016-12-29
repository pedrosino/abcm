class CreateAssociados < ActiveRecord::Migration
  def change
    create_table :associados do |t|
      t.string :nome
      t.string :email
      t.string :cpf
      t.string :identidade
      t.string :endereco
      t.string :id_wca
      t.string :id_forum
      t.date :data_cadastro
      t.date :data_vencimento
      t.timestamps null: false
    end
  end
end
