class CreateSousCategories < ActiveRecord::Migration
  def change
    create_table :sous_categories do |t|
      t.string :nom

      t.timestamps null: false
    end
  end
end
