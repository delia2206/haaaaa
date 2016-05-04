class CreateUtilisateurs < ActiveRecord::Migration
  def change
    create_table :utilisateurs do |t|
      t.string :name
      t.string :firstName

      t.timestamps null: false
    end
  end
end
