class CreateSousCategories < ActiveRecord::Migration
  def change
    create_table :sous_categories do |t|
      t.string :name
      t.references :fichier, index: true, foreign_key: true
      t.references :category, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
