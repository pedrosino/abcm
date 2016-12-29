class CreateNoticias < ActiveRecord::Migration
  def change
    create_table :noticias do |t|
      t.string :titulo, null: false
      t.string :slug, null: false, default: ''
      t.text :texto
      t.boolean :visivel, default: true
      t.integer :id_autor

      t.timestamps null: false
    end
  end
end
