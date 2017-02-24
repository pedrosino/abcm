class CreateDelegados < ActiveRecord::Migration
  def change
    create_table :delegados do |t|
      t.string :nome
      t.string :email
      t.string :local
      t.string :id_wca

      t.timestamps null: false
    end
  end
end
