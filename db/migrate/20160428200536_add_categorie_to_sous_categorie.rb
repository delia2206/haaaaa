class AddCategorieToSousCategorie < ActiveRecord::Migration
  def change
    add_reference :sous_categories, :categorie, index: true, foreign_key: true
  end
end
