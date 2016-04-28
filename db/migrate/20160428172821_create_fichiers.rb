class CreateFichiers < ActiveRecord::Migration
  def change
    create_table :fichiers do |t|
      t.string :nom

      t.timestamps null: false
    end
  end
end
