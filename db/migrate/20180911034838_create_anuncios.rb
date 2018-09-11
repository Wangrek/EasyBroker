class CreateAnuncios < ActiveRecord::Migration[5.2]
  def change
    create_table :anuncios do |t|
      t.string :identificador
      t.string :bien
      t.string :url
      t.text :descripcion
      t.string :tipo
      t.string :agencia
      t.string :precio
      t.string :metros
      t.string :recamaras
      t.string :baños
      t.text :ubicacion
      t.string :fecha
      t.text :fotos

      t.timestamps
    end
  end
end
