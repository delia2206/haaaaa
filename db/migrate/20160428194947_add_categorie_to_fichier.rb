class AddCategorieToFichier < ActiveRecord::Migration
  def change
    add_reference :fichiers, :categorie, index: true, foreign_key: true
  end
end
