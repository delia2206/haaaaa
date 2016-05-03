class CreateFichierSousCategories < ActiveRecord::Migration
  def change
    create_table :fichier_sous_categories do |t|
      t.references :fichier, index: true, foreign_key: true
      t.references :sous_category, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
