class AddPublicarToAnuncios < ActiveRecord::Migration[5.2]
  def change
    add_column :anuncios, :publicar, :boolean
  end
end
