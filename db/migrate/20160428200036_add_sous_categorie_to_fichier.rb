class AddSousCategorieToFichier < ActiveRecord::Migration
  def change
    add_reference :fichiers, :sous_categorie, index: true, foreign_key: true
  end
end
